resource "aws_route_table" "table" {
  vpc_id = aws_default_vpc.default.id

  tags = {
    Name      = "Another Route Table"
    Terraform = "true"
  }
}

resource "aws_route" "route_1" {
  route_table_id         = aws_route_table.table.id
  destination_cidr_block = "10.0.1.0/24"
  gateway_id = aws_internet_gateway.staging_gw.id
}

