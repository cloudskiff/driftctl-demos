resource "aws_lambda_function" "yadda" {
  function_name = "${data.terraform_remote_state.base.outputs.random_string}-lambda-demo"
  role          = aws_iam_role.yaddi.arn
  filename      = "data/lambda/empty.zip"
  handler       = "main"
  timeout       = 15
  runtime       = "go1.x"

  lifecycle {
    ignore_changes = [
      environment,
    ]
  }
}

resource "aws_iam_role" "yaddi" {
  name               = "driftctl-lambda-role"
  path               = "/service-role/"
  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      },
      "Effect": "Allow",
      "Sid": ""
    }
  ]
}
EOF
}

resource "aws_iam_policy" "yadda" {
  name = "policy"

  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": [
        "sqs:ReceiveMessage",
        "sqs:DeleteMessage",
        "sqs:GetQueueAttributes"
      ],
      "Resource": "*"
    }
  ]
}
EOF
}

resource "aws_iam_policy_attachment" "yaddattach" {
  name = "yaddattachment"
  // users      = [aws_iam_user.user.name]
  // users = []
  roles = [aws_iam_role.yaddi.name]
  //groups     = [aws_iam_group.group.name]
  policy_arn = aws_iam_policy.yadda.arn
}

resource "aws_lambda_event_source_mapping" "yadda" {
  event_source_arn = data.terraform_remote_state.sqs.outputs.sqs_arn
  function_name    = aws_lambda_function.yadda.arn
}


