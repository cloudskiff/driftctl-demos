# The default VPC
resource "aws_default_vpc" "default" {
  tags = {
    Name = "Default VPC"
  }
}