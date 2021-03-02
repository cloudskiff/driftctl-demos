resource "aws_iam_user" "intern_user" {
  name = "INTERN-${data.terraform_remote_state.base.outputs.random_string}"

  tags = {
    Name = "INTERN-${data.terraform_remote_state.base.outputs.random_string} User"
  }
}

resource "aws_iam_access_key" "intern_user" {
  user = aws_iam_user.intern_user.name
}

resource "aws_iam_user_policy_attachment" "intern" {
  user       = aws_iam_user.intern_user.name
  policy_arn = "arn:aws:iam::aws:policy/ReadOnlyAccess"
}
