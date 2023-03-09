module "rule" {
    source = "./modules/eventbridge_rule"
    for_each = {for action in local.actions : action.rule-name => action}
    service = each.value["service"]
    rule_name = each.value["rule-name"]
    rules = each.value["rules"]
    running_region = var.region
    service_regions = each.value["regions"]
    target_event_bus_arn = var.target_event_bus_arn
    invoke_firefly_role_arn = var.invoke_firefly_role_arn
    tags = var.tags
} 

module "no_actions_rule" {
    source = "./modules/no_actions_eventbridge_rule"
    for_each = {for action in local.serviceWithoutActions : action.rule-name => action}
    service = each.value["service"]
    rule_name = each.value["rule-name"]
    running_region = var.region
    service_regions = each.value["regions"]
    target_event_bus_arn = var.target_event_bus_arn
    invoke_firefly_role_arn = var.invoke_firefly_role_arn
    tags = var.tags
}
