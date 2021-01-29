# Create an EIP for the NAT GW
resource "aws_eip" "nat_gw" {
  vpc = true
  tags = {
    Name      = "Staging NAT EIP"
    Terraform = "true"
  }
}

# Staging NAT GW
resource "aws_nat_gateway" "gw" {
  allocation_id = aws_eip.nat_gw.id
  subnet_id     = aws_subnet.staging_1.id
  depends_on    = [aws_internet_gateway.staging_gw]

  tags = {
    Name      = "Staging NAT Gateway"
    Terraform = "true"
  }
}

