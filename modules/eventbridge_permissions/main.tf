data "aws_caller_identity" "current" {}

locals {
  account_id = data.aws_caller_identity.current.account_id
}

resource "aws_iam_policy" "firefly_eventbridge_permission" {
  name        = "${var.resource_prefix}fireflyEventDrivenRulesPermission"
  path        = "/"
  description = "permission to put eventbridge rules"

  policy = jsonencode({
    "Version": "2012-10-17",
    "Statement": [
        {
          "Action": [
            "events:*"
          ],
          "Effect": "Allow",
          "Resource": "arn:aws:events:*:${local.account_id}:rule/firefly-events-*"
        },
        {
            "Effect": "Allow",
            "Action": [
              "iam:PassRole"
            ],
            "Resource": var.invoke_firefly_role_arn,
            "Condition": {
                  "StringEquals": {"iam:PassedToService": "events.amazonaws.com"}
              }
          }
    ]
  })
  tags = var.tags
}

resource "aws_iam_role_policy_attachment" "firefly_eventbridge_permissions" {
  role       = var.firefly_role_name
  policy_arn = aws_iam_policy.firefly_eventbridge_permission.arn

}

