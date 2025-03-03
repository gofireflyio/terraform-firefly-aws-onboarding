# trusted relationships policy
data "aws_iam_policy_document" "AWSCloudFormationStackSetAdministrationRole_assume_role_policy" {
  statement {
    actions = ["sts:AssumeRole"]
    effect  = "Allow"

    principals {
      identifiers = ["cloudformation.amazonaws.com"]
      type        = "Service"
    }
  }
}

# policy permissions document
data "aws_iam_policy_document" "AWSCloudFormationStackSetAdministrationRole_ExecutionPolicy" {
  statement {
    actions   = ["sts:AssumeRole"]
    effect    = "Allow"
    resources = ["arn:aws:iam::*:role/${aws_cloudformation_stack_set.FireflyStackSet.execution_role_name}"]
  }
}

# create policy
resource "aws_iam_role_policy" "AWSCloudFormationStackSetAdministrationRole_ExecutionPolicy" {
  name   = "FireflyExecutionPolicy"
  policy = data.aws_iam_policy_document.AWSCloudFormationStackSetAdministrationRole_ExecutionPolicy.json
  role   = aws_iam_role.FireflyAWSCloudFormationStackSetAdministrationRole.name
  lifecycle {
    ignore_changes = [policy]
  }
}

# create role with attached policy
resource "aws_iam_role" "FireflyAWSCloudFormationStackSetAdministrationRole" {
  assume_role_policy = data.aws_iam_policy_document.AWSCloudFormationStackSetAdministrationRole_assume_role_policy.json
  name               = "FireflyAWSCloudFormationStackSetAdministrationRole"
}

# create stackset
resource "aws_cloudformation_stack_set" "FireflyStackSet" {
  name                    = "FireflyOnboarding"

  permission_model = "SERVICE_MANAGED"
  capabilities = ["CAPABILITY_NAMED_IAM"]

  auto_deployment {
    enabled = true
    retain_stacks_on_account_removal = false
  }
  parameters = {
    ExternalID = var.external-id
  }

  template_body = data.http.cloudformation_template.response_body
  tags = {
    firefly = "true"
  }
  lifecycle {
    ignore_changes = [administration_role_arn]
  }
}




