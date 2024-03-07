# data "terracurl_request" "firefly_login" {
#   name           = "firefly_aws_integration"
#   url            = "${var.firefly_endpoint}/account/access_keys/login"
#   method         = "POST"
#   headers        = {
#     Content-Type: "application/json",
#   }
#   request_body = jsonencode({ "accessKey"=var.firefly_access_key,  "secretKey"=var.firefly_secret_key })
# }