resource "time_sleep" "wait_10_seconds" {
  depends_on = [
    aws_iam_policy.firefly_readonly_policy_deny_list, aws_iam_policy.firefly_s3_specific_permission,
    aws_iam_role.firefly_cross_account_access_role
  ]

  create_duration = "10s"
}

data "http" "firefly_aws_integration_request" {
  url = "${var.firefly_endpoint}/integrations/aws/"
  method = "POST"
  request_headers = {
    Content-Type = "application/json"
    Authorization = "Bearer ${var.firefly_token}"
  }
  request_body = jsonencode(
    {
      "name"= var.name,
      "roleArn"= aws_iam_role.firefly_cross_account_access_role.arn,
      "externalId"= var.role_external_id,
      "fullScanEnabled"= var.full_scan_enabled,
      "isProd"= var.is_prod,
      "isEventDriven" = var.event_driven,
      "eventDrivenRegions" = var.event_driven_regions,
      "shouldRunWorkflow" = var.run_workflow,
      "isIacAutoDiscoverDisabled" =  var.should_autodiscover_disabled
    }
  )
  depends_on = [
    aws_iam_policy.firefly_readonly_policy_deny_list, aws_iam_policy.firefly_s3_specific_permission,
    aws_iam_role.firefly_cross_account_access_role, time_sleep.wait_10_seconds
  ]
}