output "firefly_caa_role_arn" {
  value = len(module.firefly_aws_integration) == 1 ? module.firefly_aws_integration[0].firefly_caa_role_arn: null
}