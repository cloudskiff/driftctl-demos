# access base tfstate
data "terraform_remote_state" "base" {
  backend = "s3"

  config = {
    bucket = "driftctl-tfstates"
    key    = "base.tfstate"
    region = "us-east-1"
  }
}

# access sqs tfstate
data "terraform_remote_state" "sqs" {
  backend = "s3"

  config = {
    bucket = "driftctl-tfstates"
    key    = "sqs.tfstate"
    region = "us-east-1"
  }
}

