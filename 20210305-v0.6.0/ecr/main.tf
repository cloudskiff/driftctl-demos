resource "aws_ecr_repository" "ecr01" {
  count = 10
  name                 = "ecr-${data.terraform_remote_state.base.outputs.random_string}-${count.index}"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }

  tags = {
    camelCase1 = "true"
    CamelCase2 = "false"
  }
}