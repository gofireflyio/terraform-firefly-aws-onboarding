module "firefly_auth" {
  count = var.firefly_token == "" ? 1 : 0
  source = "./modules/firefly_auth"
  firefly_endpoint = var.firefly_endpoint
  firefly_access_key = var.firefly_access_key
  firefly_secret_key = var.firefly_secret_key
}
