
data "http" "firefly_aws_integration_request" {
  for_each = toset(local.account_ids)
  url = "${var.endpoint}/integrations/aws/"
  method = "POST"
  request_headers = {
    Content-Type = "application/json"
    Authorization = "Bearer ${var.token}"
  }
  request_body = jsonencode(
    {
      "name"= each.value,
      "roleArn"= "arn:aws:iam::${each.value}:role/firefly-caa-role",
      "externalId"= var.external-id,
      "fullScanEnabled"= true,
      "isProd"= var.is_prod,
      "isEventDriven" = var.event_driven,
      "eventDrivenRegions" = var.event_driven_regions,
      "shouldRunWorkflow" = var.run_workflow,
      "isIacAutoDiscoverDisabled" =  false
    }
  )
}


# Eventdriven Setup: trigger eventbridge rules creation
module "run_workflow" {
  for_each = toset(local.account_ids)
  source               = "../run_workflow"
  firefly_token        = var.token
  name                 = each.value
  firefly_endpoint     = var.endpoint
  events_role_arn      = "arn:aws:iam::${each.value}:role/invoke-firefly-remote-event-bus"
  event_driven_regions = var.event_driven_regions
  depends_on = [
    aws_cloudformation_stack_set_instance.triggerOutDeploy
  ]
}