locals {
  firefly_role_name             = "${var.resource_prefix}${var.firefly_role_name}"
  tags = {
    "firefly" = "true"
  }
}