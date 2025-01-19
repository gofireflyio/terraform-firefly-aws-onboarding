locals {
  firefly_role_name             = "${var.resource_prefix}${var.firefly_role_name}"
  firefly_deny_list_policy_name = "${var.resource_prefix}${var.firefly_deny_list_policy_name}"
  tags = {
    "firefly" = "true"
  }
}