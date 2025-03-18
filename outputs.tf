output "firefly_integration_role_arn" {
  value = length(module.firefly_aws_integration) == 1 ? module.firefly_aws_integration[0].firefly_integration_role_arn : null
}
output "firefly_integration_role_name" {
  value = length(module.firefly_aws_integration) == 1 ? module.firefly_aws_integration[0].firefly_integration_role_name : null
}
