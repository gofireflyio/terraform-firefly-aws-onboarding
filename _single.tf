module "firefly_auth" {
  count              = var.firefly_token == "" ? 1 : 0
  source             = "./modules/firefly_auth"
  firefly_endpoint   = var.firefly_endpoint
  firefly_access_key = var.firefly_access_key
  firefly_secret_key = var.firefly_secret_key
}

module "firefly_aws_integration" {
  count                   = !var.stackset ? 1 : 0
  source                  = "./modules/firefly_aws_integration"
  firefly_token           = length(module.firefly_auth) > 0 ? module.firefly_auth[0].firefly_token : var.firefly_token
  integration_name        = var.integration_name
  firefly_endpoint        = var.firefly_endpoint
  firefly_organization_id = var.firefly_organization_id
  production              = var.production
  external_id             = var.external_id
  role_name               = local.firefly_role_name
  event_driven_regions    = var.event_driven_regions
  resource_prefix         = var.resource_prefix
  target_event_bus_arn    = var.target_event_bus_arn
  allowed_s3_iac_buckets  = var.allowed_s3_iac_buckets
  tags                    = merge(var.tags, local.tags)
  debug                   = var.debug
}


