data "aws_caller_identity" "current" {}

resource "aws_iam_policy" "firefly_eventbridge_permission" {
  name        = "${var.resource_prefix}fireflyEventDrivenRulesPermission"
  path        = "/"
  description = "permission to put eventbridge rules"

  policy = jsonencode({
    "Version" : "2012-10-17",
    "Statement" : [
      {
        "Action" : [
          "events:ListTargetsByRule",
          "events:DescribeRule",
          "events:PutTargets",
          "events:PutRule",
          "events:RemoveTargets",
          "events:DeleteRule",
          "events:DisableRule",
          "events:TestEventPattern",
          "events:EnableRule",
          "events:TagResource"
        ],
        "Effect" : "Allow",
        "Resource" : "arn:aws:events:*:${data.aws_caller_identity.current.account_id}:rule/firefly-events-*"
      },
      {
        "Effect" : "Allow",
        "Action" : [
          "iam:PassRole"
        ],
        "Resource" : "arn:aws:iam::${data.aws_caller_identity.current.account_id}:role/${var.resource_prefix}invoke-firefly-remote-event-bus"
        "Condition" : {
          "StringEquals" : { "iam:PassedToService" : "events.amazonaws.com" }
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

