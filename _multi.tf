module "aws-bulk-integrations" {
  count = var.stackset ? 1 : 0

  source                  = "./modules/stackset-onboarding"
  external-id             = var.external_id
  token                   = length(module.firefly_auth) > 0 ? module.firefly_auth[0].firefly_token : var.firefly_token
  org-ou-ids              = var.org_ou_ids
  max_concurrent_deploys  = var.max_concurrent_deploys
  failure_tolerance_count = var.failure_tolerance_count
  concurrency_mode        = var.concurrency_mode
  debug                   = var.debug
}

