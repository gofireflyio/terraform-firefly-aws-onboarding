module "rule" {
  count =  contains(var.service_regions, var.running_region) ? 1 : 0
  source = "../rule"
  service = var.service
  rule_name = var.rule_name
  target_event_bus_arn = var.target_event_bus_arn
  invoke_firefly_role_arn = var.invoke_firefly_role_arn
  event_pattarn = jsonencode({
    "source" : ["aws.${var.service}"],
    "detail" : {
      "eventName" : var.rules
    }
  })
  tags = var.tags
  resource_prefix = var.resource_prefix
}