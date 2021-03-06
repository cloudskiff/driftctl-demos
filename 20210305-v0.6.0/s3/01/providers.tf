terraform {
  required_version = "= 0.14.7"
  required_providers {
    aws    = "= 3.23.0"
    random = "= 3.0.0"
  }
  backend "s3" {
    bucket = "driftctl-tfstates"
    key    = "s3-1.tfstate"
    region = "us-east-1"
    // dynamodb_table = "terraform_lock"
  }
}