# FIFO queue

resource "aws_sqs_queue" "fifo_queue" {
  name                        = "queue-${data.terraform_remote_state.base.outputs.random_string}.fifo"
  fifo_queue                  = true
  content_based_deduplication = true
}

# babenko module
module "sqs" {
  source  = "terraform-aws-modules/sqs/aws"
  version = "2.1.0"
  name = "user-${data.terraform_remote_state.base.outputs.random_string}"

  tags = {
    Service     = "user-${data.terraform_remote_state.base.outputs.random_string}"
    Environment = "dev"
  }
}