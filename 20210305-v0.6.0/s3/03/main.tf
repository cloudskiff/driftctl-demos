module "s3_bucket_3" {
  source = "terraform-aws-modules/s3-bucket/aws"

  bucket = "s3-bucket-2-${data.terraform_remote_state.base.outputs.random_string}"
  acl    = "private"

}