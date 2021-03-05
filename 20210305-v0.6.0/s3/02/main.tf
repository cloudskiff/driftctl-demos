module "s3_bucket_2" {
  source = "terraform-aws-modules/s3-bucket/aws"

  bucket = "s3-bucket-2-${data.terraform_remote_state.base.outputs.random_string}"
  acl    = "private"

}