module "s3_bucket_1" {
  source = "terraform-aws-modules/s3-bucket/aws"

  bucket = "s3-bucket-1-${data.terraform_remote_state.base.outputs.random_string}"
  acl    = "private"

}