output "stackset-name" {
  value = aws_cloudformation_stack_set.FireflyStackSet.name
}

output "applied_accounts" {
  value = local.applied_accounts
}

output "discovered_accounts" {
  value = local.discovered_accounts
}

output "cloudformation_template" {
  value = data.http.cloudformation_template.response_body
}

output "integration_status_codes" {
  value = data.http.firefly_aws_integration_request[*].status_code
}

output "integration_response_bodies" {
  value = data.http.firefly_aws_integration_request[*].response_body
}