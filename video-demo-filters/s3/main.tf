resource "aws_s3_bucket" "staging-bucket" {
  bucket = "${var.talk}-staging-bucket-${data.terraform_remote_state.base.outputs.random_string}"
  acl    = "private"

  tags = {
    Name        = "staging-bucket"
    Terraform   = "true"
    Environment = "staging"
  }
}

resource "aws_s3_bucket" "production-bucket" {
  bucket = "${var.talk}-production-bucket-${data.terraform_remote_state.base.outputs.random_string}"
  acl    = "private"

  tags = {
    Name        = "production-bucket"
    Terraform   = "true"
    Environment = "production"
  }
}

