
resource "aws_cloudformation_stack_set_instance" "triggerOutDeploy" {
  deployment_targets {
      organizational_unit_ids = [var.org-ou-id]
  }
  region         = "us-east-1"
  operation_preferences {
    max_concurrent_count = var.max_concurrent_deploys
  }
  stack_set_name = aws_cloudformation_stack_set.FireflyStackSet.name
}
