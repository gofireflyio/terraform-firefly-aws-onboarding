output "firefly_integration_role_arn" {
  value = length(module.firefly_aws_integration[0]) == 1 ? module.firefly_aws_integration[0].firefly_integration_role_arn : null
}
output "firefly_integration_role_name" {
  value = length(module.firefly_aws_integration[0]) == 1 ? module.firefly_aws_integration[0].firefly_integration_role_name : null
}

output "discovered_accounts" {
  value = var.stackset ? module.aws-bulk-integrations[0].discovered_accounts : null
}

output "integration_responses" {
  value = var.stackset ? module.aws-bulk-integrations[0].integration_responses : module.firefly_aws_integration[0].integration_response
}