// this role is dedicated for events service
resource "aws_iam_role" "invoke_firefly_event_bus" {
  name               = "invoke-firefly-remote-event-bus"
  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Principal": {
        "Service": "events.amazonaws.com"
      },
      "Effect": "Allow"
    }
  ]
}
EOF
}

resource "aws_iam_policy" "invoke_firefly_event_bus" {
  name   = "invoke-firefly-remote-event-bus"
  policy = jsonencode({
    "Version": "2012-10-17",
    "Statement": [
        {
          "Action": [
            "events:PutEvents"
          ],
          "Effect": "Allow",
          "Resource": var.target_event_bus_arn
        }
    ]
  })
}

resource "aws_iam_role_policy_attachment" "invoke_firefly_event_bus" {
  role       = aws_iam_role.invoke_firefly_event_bus.name
  policy_arn = aws_iam_policy.invoke_firefly_event_bus.arn
}
