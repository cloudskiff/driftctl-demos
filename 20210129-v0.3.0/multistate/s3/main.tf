resource "aws_s3_bucket" "demo" {
  bucket = "${data.terraform_remote_state.base.outputs.random_string}-demo"
  acl    = "private"
}

