# access base tfstate
data "terraform_remote_state" "base" {
  backend = "s3"

  config = {
    bucket = "driftctl-tfstates"
    key    = "base.tfstate"
    region = "us-east-1"
  }
}

