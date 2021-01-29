# resource "aws_lambda_function" "version" {
#   function_name = "${random_string.prefix.result}-lambda-demo"
#   role          = aws_iam_role.lambda.arn
#   filename      = "data/lambda/empty.zip"
#   handler       = "main"
#   timeout       = 15
#   runtime       = "go1.x"

#   lifecycle {
#     ignore_changes = [
#       environment,
#     ]
#   }
# }

# resource "aws_iam_role" "lambda" {
#   name               = "driftctl-lambda-role"
#   path               = "/service-role/"
#   assume_role_policy = <<EOF
# {
#     "Version": "2012-10-17",
#     "Statement": [
#         {
#         "Action": "sts:AssumeRole",
#         "Principal": {
#             "Service": "lambda.amazonaws.com"
#         },
#         "Effect": "Allow",
#         "Sid": ""
#         }
#     ]
# }
# EOF
# }
