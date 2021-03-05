resource "aws_kms_key" "demo_key_1" {
  description             = "KMS Demo key 1 ${data.terraform_remote_state.base.outputs.random_string}"
  // deletion_window_in_days = 10
  key_usage               = "ENCRYPT_DECRYPT"
  // is_enabled = true
  tags = {
    Name      = "KMS Demo Key ${data.terraform_remote_state.base.outputs.random_string}",
    Terraform = "true"
  }
}

resource "aws_kms_alias" "alias" {
  name          = "alias/demo-key-alias"
  target_key_id = aws_kms_key.demo_key_1.key_id
}

