resource "time_sleep" "wait_10_seconds" {
  depends_on = [
    aws_iam_policy.firefly_readonly_policy_deny_list, aws_iam_policy.firefly_s3_specific_permission,
    aws_iam_role.firefly_cross_account_access_role
  ]

  create_duration = "10s"
}

# resource "terracurl_request" "firefly_aws_integration_request" {
#   name           = "firefly aws provider integration"
#   url            = "${var.firefly_endpoint}/integrations/aws/"
#   method         = "POST"
#   request_body   = jsonencode(
#     {
#       "name"= var.name,
#       "roleArn"= aws_iam_role.firefly_cross_account_access_role.arn,
#       "externalId"= var.role_external_id,
#       "fullScanEnabled"= var.full_scan_enabled,
#       "isProd"= var.is_prod
#       "isEventDriven" = var.event_driven
#       "eventDrivenRegions" = var.event_driven_regions
#       "shouldRunWorkflow" = !var.terraform_create_rules
#       "isIacAutoDiscoverDisabled" =  var.should_autodiscover_disabled
#     }
#   )

#   headers = {
#     Content-Type = "application/json"
#     Authorization: "Bearer ${var.firefly_token}"
#   }

#    lifecycle {
#       ignore_changes = [
#         headers,
#         destroy_headers,
#         request_body
#       ]
#   }
#   response_codes = [200, 409, 401]

#   destroy_url    = "https://www.google.com"
#   destroy_method = "GET"

#   destroy_headers = {}

#   destroy_request_body =  ""
#   destroy_response_codes = [200]
#    depends_on = [
#     aws_iam_policy.firefly_readonly_policy_deny_list, aws_iam_policy.firefly_s3_specific_permission,
#     aws_iam_role.firefly_cross_account_access_role, time_sleep.wait_10_seconds
#   ]
# }