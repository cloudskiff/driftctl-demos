# terragrunt.hcl
remote_state {
  backend = "local"
  generate = {
    path      = "backend.tf"
    if_exists = "overwrite_terragrunt"
  }
  config = {
    path = "../states/${path_relative_to_include()}/terraform.tfstate"
  }
}
