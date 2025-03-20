data "http" "firefly_aws_integration_request" {
  url = "${var.firefly_endpoint}/integrations/aws/"
  method = "POST"
  request_headers = {
    Content-Type = "application/json"
    Authorization = "Bearer ${var.firefly_token}"
  }
  request_body = jsonencode(
    {
      "name" = var.integration_name,
      "roleArn" = aws_iam_role.firefly_cross_account_access_role.arn,
      "externalId" = var.external_id,
      "fullScanEnabled" = true,
      "isProd" = var.production,
      "isEventDriven" = true,
      "eventDrivenRegions" = var.event_driven_regions,
      "shouldRunWorkflow" = true,
      "isIacAutoDiscoverDisabled" = false
    }
  )
  lifecycle {
    postcondition {
      condition     = contains([200 ,201, 409], self.status_code)
      error_message = "Contact Firefly team for more information"
    }
  }
}

