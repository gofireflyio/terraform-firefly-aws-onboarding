resource "time_sleep" "wait_10_seconds" {
  depends_on = [
    aws_iam_policy.firefly_readonly_policy_deny_list, aws_iam_policy.firefly_s3_specific_permission,
    aws_iam_role.firefly_cross_account_access_role
  ]

  create_duration = "10s"
}

data "http" "firefly_aws_integration_request" {
  url    = "${var.firefly_endpoint}/integrations/aws/"
  method = "POST"
  request_headers = {
    Content-Type  = "application/json"
    Authorization = "Bearer ${var.firefly_token}"
  }
  request_body = jsonencode(
    {
      "name"                      = var.integration_name,
      "roleArn"                   = aws_iam_role.firefly_cross_account_access_role.arn,
      "externalId"                = var.external_id,
      "fullScanEnabled"           = true,
      "isProd"                    = var.production,
      "isEventDriven"             = true,
      "eventDrivenRegions"        = var.event_driven_regions,
      "shouldRunWorkflow"         = true,
      "isIacAutoDiscoverDisabled" = false
    }
  )
  lifecycle {
    postcondition {
      condition     = var.debug ? !contains([999], self.status_code ) : contains([200, 201], self.status_code)
      error_message = "Contact Firefly Team for more information"
    }
  }
  depends_on = [
    aws_iam_policy.firefly_readonly_policy_deny_list, aws_iam_policy.firefly_s3_specific_permission,
    aws_iam_role.firefly_cross_account_access_role, time_sleep.wait_10_seconds
  ]
}

