resource "aws_internet_gateway" "staging_gw" {
  vpc_id = aws_default_vpc.default.id

  tags = {
    Name      = "Staging Internet Gateway"
    Terraform = "true"
  }
}