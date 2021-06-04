# access base tfstate
data "terraform_remote_state" "base" {
  backend = "local"

  config = {
    path = "${path.module}/../states/base/terraform.tfstate"
  }
}