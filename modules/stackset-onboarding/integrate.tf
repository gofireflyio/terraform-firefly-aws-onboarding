
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
      "name" = each.value,
      "roleArn" = "arn:aws:iam::${each.value}:role/firefly-caa-role",
      "externalId" = var.external-id,
      "fullScanEnabled" = true,
      "isProd" = var.production,
      "isEventDriven" = true,
      "eventDrivenRegions" = var.event_driven_regions,
      "shouldRunWorkflow" = true,
      "isIacAutoDiscoverDisabled" =  false
    }
  )
  depends_on = [aws_cloudformation_stack_set_instance.triggerOutDeploy]
  lifecycle {
    postcondition {
      condition     = contains([200 ,201, 409], self.status_code)
      error_message = "Contact Firefly team for more information"
    }
  }
}