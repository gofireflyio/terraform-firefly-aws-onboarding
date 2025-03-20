output "stack_set_name" {
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

output "integration_responses" {
  value = [for account_id in local.account_ids : "${account_id} - ${data.http.firefly_aws_integration_request[account_id].response_body} - ${data.http.firefly_aws_integration_request[account_id].status_code}"]
}