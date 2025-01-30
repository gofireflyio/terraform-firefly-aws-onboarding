data "http" "firefly_run_workflow_request" {
  url = "${var.firefly_endpoint}/integrations/aws/runWorkflow"
  method = "POST"
  request_headers = {
    Content-Type = "application/json"
    Authorization = "Bearer ${var.firefly_token}"
  }
  request_body = jsonencode(
    {
      "name": var.name
      "eventsRoleArn": var.events_role_arn
      "eventDrivenRegions": var.event_driven_regions
    }
  )

}