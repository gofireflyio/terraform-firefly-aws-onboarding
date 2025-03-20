module "firefly_eventbridge_permissions" {
  source               = "../eventbridge_permissions"
  firefly_role_name    = aws_iam_role.firefly_cross_account_access_role.name
  target_event_bus_arn = var.target_event_bus_arn
  tags                 = var.tags
  resource_prefix      = var.resource_prefix
}