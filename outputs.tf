output "firefly_caa_role_arn" {
  value = len(module.firefly_aws_integration.firefly_caa_role_arn) == 1 ? module.firefly_aws_integration.firefly_caa_role_arn[0]: null
}