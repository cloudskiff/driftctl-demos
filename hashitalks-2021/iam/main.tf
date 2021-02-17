resource "aws_iam_user" "microservice_user" {
  name = "microservice-${data.terraform_remote_state.base.outputs.random_string}"

  tags = {
    Name = "microservice-${data.terraform_remote_state.base.outputs.random_string} User"
  }
}

resource "aws_iam_access_key" "microservice_user" {
  user = aws_iam_user.microservice_user.name
}

resource "aws_iam_user_policy_attachment" "microservice" {
  user       = aws_iam_user.microservice_user.name
  policy_arn = "arn:aws:iam::aws:policy/ReadOnlyAccess"
}

