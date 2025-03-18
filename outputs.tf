output "firefly_integration_role_arn" {
  value = length(module.firefly_aws_integration) == 1 ? module.firefly_aws_integration[0].firefly_integration_role_arn : null
}
output "firefly_integration_role_name" {
  value = length(module.firefly_aws_integration) == 1 ? module.firefly_aws_integration[0].firefly_integration_role_name : null
}

output "discovered_accounts" {
  value = var.bulk_onboarding ? module.aws-bulk-integrations[0].discovered_accounts : null
}
