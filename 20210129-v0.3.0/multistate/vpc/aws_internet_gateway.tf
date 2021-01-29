resource "aws_internet_gateway" "staging_gw" {
  vpc_id = aws_vpc.staging.id

  tags = {
    Name      = "Staging Internet Gateway"
    Terraform = "true"
  }
}