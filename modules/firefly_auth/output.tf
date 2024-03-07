locals {
  # response_obj = try(jsondecode(data.terracurl_request.firefly_login.response), {})
  response_obj = try(jsondecode(data.http.firefly_login.request_body), {})
  token = lookup(local.response_obj, "access_token", "error")
}
output "firefly_token" {
  value = local.token
}