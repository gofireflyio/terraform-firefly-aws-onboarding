resource "aws_cloudwatch_event_rule" "rule" {
  name        = "${var.resource_prefix}firefly-events-${var.rule_name}"
  description = "${var.service} Cloud Trail to Firefly event bus"
  event_pattern = var.event_pattarn
  tags = var.tags
}

resource "aws_cloudwatch_event_target" "target" {
  rule      = aws_cloudwatch_event_rule.rule.name
  target_id = "${var.resource_prefix}SendToExternalEventBus"
  arn       = var.target_event_bus_arn
  role_arn  = var.invoke_firefly_role_arn
}
