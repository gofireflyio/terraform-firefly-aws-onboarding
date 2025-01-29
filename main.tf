module "firefly_auth" {
  count              = var.firefly_token == "" ? 1 : 0
  source             = "./modules/firefly_auth"
  firefly_endpoint   = var.firefly_endpoint
  firefly_access_key = var.firefly_access_key
  firefly_secret_key = var.firefly_secret_key
}

# Create a new Firefly AWS integration
module "firefly_aws_integration" {
  count                         = var.exist_integration && !var.bulk_onboarding ? 0 : 1
  source                        = "./modules/firefly_aws_integration"
  firefly_token                 = length(module.firefly_auth) > 0 ? module.firefly_auth[0].firefly_token : var.firefly_token
  name                          = var.name
  firefly_endpoint              = var.firefly_endpoint
  firefly_organization_id       = var.firefly_organization_id
  event_driven                  = var.is_event_driven
  target_event_bus_arn          = var.target_event_bus_arn
  is_prod                       = var.is_prod
  full_scan_enabled             = var.full_scan_enabled
  role_external_id              = var.role_external_id
  role_name                     = local.firefly_role_name
  firefly_deny_list_policy_name = local.firefly_deny_list_policy_name
  event_driven_regions          = var.event_driven_regions
  resource_prefix               = var.resource_prefix
  should_autodiscover_disabled  = !var.enable_iac_auto_discover
  allowed_s3_iac_buckets        = []
  tags = merge(var.tags, local.tags)
}

# Eventdriven Setup: allow eventbridge to send events to firefly
module "invoke_firefly_permissions" {
  count                = var.is_event_driven && !var.bulk_onboarding ? 1 : 0
  source               = "./modules/invoke_firefly_permissions"
  target_event_bus_arn = var.target_event_bus_arn
  depends_on = [
    module.firefly_aws_integration
  ]
  tags = merge(var.tags, local.tags)
  resource_prefix = var.resource_prefix
}

# Eventdriven Setup: allow firefly to create eventbridge rules
module "firefly_eventbridge_permissions" {
  count             = var.enable_evntbridge_permissions && !var.bulk_onboarding ? 1 : 0
  source            = "./modules/eventbridge_permissions"
  firefly_role_name = local.firefly_role_name
  depends_on = [
    module.firefly_aws_integration,
    module.invoke_firefly_permissions,
  ]
  tags = merge(var.tags, local.tags)
  resource_prefix = var.resource_prefix
}

# Eventdriven Setup: trigger eventbridge rules creation
module "run_workflow" {
  count                = var.is_event_driven && var.exist_integration && !var.bulk_onboarding ? 1 : 0
  source               = "./modules/run_workflow"
  firefly_token        = var.firefly_token
  name                 = var.name
  firefly_endpoint     = var.firefly_endpoint
  events_role_arn      = module.invoke_firefly_permissions[0].invoke_firefly_role_arn
  event_driven_regions = var.event_driven_regions
  depends_on = [
    module.firefly_aws_integration,
    module.invoke_firefly_permissions,
    module.firefly_eventbridge_permissions
  ]
}
