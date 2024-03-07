data "http" "firefly_login" {
  url = "${var.firefly_endpoint}/account/access_keys/login"
  method = "POST"
  request_headers = {
    Content-Type = "application/json"
  }
  request_body = jsonencode({ "accessKey"=var.firefly_access_key,  "secretKey"=var.firefly_secret_key })
}