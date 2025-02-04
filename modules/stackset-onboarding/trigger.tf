
resource "aws_cloudformation_stack_set_instance" "triggerOutDeploy" {
  deployment_targets {
      organizational_unit_ids = var.org-ou-ids
  }
  region         = "us-east-1"
  operation_preferences {
    max_concurrent_count = var.max_concurrent_deploys
    failure_tolerance_count = var.failure_tolerance_count
  }
  stack_set_name = aws_cloudformation_stack_set.FireflyStackSet.name
}
