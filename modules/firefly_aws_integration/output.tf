output "firefly_integration_role_name" {
  value = aws_iam_role.firefly_cross_account_access_role.name
}

output "firefly_integration_role_arn" {
  value = aws_iam_role.firefly_cross_account_access_role.arn
}

output "integration_response" {
  value = "${local.account_id} - ${data.http.firefly_aws_integration_request.response_body} - ${data.http.firefly_aws_integration_request.status_code}"
}