##
# Module
# NOT SUPPORTED AS OF v0.3.x
## 

module "iam_iam-user" {
  source                        = "terraform-aws-modules/iam/aws//modules/iam-user"
  version                       = "3.7.0"
  name                          = "MODULE-USER-${data.terraform_remote_state.base.outputs.random_string}"
  create_iam_access_key         = true  # default = true
  create_iam_user_login_profile = false # default = true
}