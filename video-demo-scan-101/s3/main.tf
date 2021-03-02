resource "aws_s3_bucket" "demo" {
  bucket = "${var.talk}-demo-${data.terraform_remote_state.base.outputs.random_string}"
  acl    = "private"
}

