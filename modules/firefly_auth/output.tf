locals {
  # response_obj = try(jsondecode(data.terracurl_request.firefly_login.response), {})
  response_obj = {}
  token = lookup(local.response_obj, "access_token", "error")
}
output "firefly_token" {
  value = local.token
}