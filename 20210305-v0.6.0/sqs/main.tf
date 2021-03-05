# FIFO queue

resource "aws_sqs_queue" "fifo_queue" {
  name                        = "queue-${data.terraform_remote_state.base.outputs.random_string}.fifo"
  fifo_queue                  = true
  content_based_deduplication = true
}

output "sqs_arn" {
  value = aws_sqs_queue.fifo_queue.arn
}