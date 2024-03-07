# resource "terracurl_request" "firefly_run_workflow_request" {
#   name           = "firefly run workflow on aws provider integration"
#   url            = "${var.firefly_endpoint}/integrations/aws/runWorkflow"
#   method         = "POST"
#   request_body   = jsonencode(
#     {
#       "name"= var.name
#       "eventsRoleArn": var.events_role_arn
#       "eventDrivenRegions": var.event_driven_regions
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
#   response_codes = [200, 409]

#   destroy_url    = "https://www.google.com"
#   destroy_method = "GET"

#   destroy_headers = {}

#   destroy_request_body =  ""
#   destroy_response_codes = [200]
# }

data "http" "firefly_run_workflow_request" {
  url = "${var.firefly_endpoint}/integrations/aws/runWorkflow"
  method = "POST"
  request_headers = {
    Content-Type = "application/json"
    Authorization = "Bearer ${var.firefly_token}"
  }
  request_body = jsonencode(
    {
      "name"= var.name
      "eventsRoleArn": var.events_role_arn
      "eventDrivenRegions": var.event_driven_regions
    }
  )

}