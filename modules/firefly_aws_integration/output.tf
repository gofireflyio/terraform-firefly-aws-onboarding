output "firefly_integration_role_name" {
  value = aws_iam_role.firefly_cross_account_access_role.name
}

output "firefly_integration_role_arn" {
  value = aws_iam_role.firefly_cross_account_access_role.arn
}

output "integration_status_code" {
  value = data.http.firefly_aws_integration_request.status_code
}

output "integration_response_body" {
  value = data.http.firefly_aws_integration_request.response_body
}