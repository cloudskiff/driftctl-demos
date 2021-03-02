resource "aws_default_route_table" "default_rt" {
  default_route_table_id = aws_vpc.staging.default_route_table_id

  #   route {
  #     # ...
  #   }

  tags = {
    Name      = "Default table for staging VPC"
    Terraform = "true"
  }
}

resource "aws_route_table" "another_rt" {
  vpc_id = aws_vpc.staging.id

  #   route {
  #     cidr_block = "10.0.1.0/24"
  #     gateway_id = aws_internet_gateway.main.id
  #   }

  #   route {
  #     ipv6_cidr_block        = "::/0"
  #     egress_only_gateway_id = aws_egress_only_internet_gateway.foo.id
  #   }

  tags = {
    Name      = "Another Route Table"
    Terraform = "true"
  }
}

# valid target type: 
#   egress_only_gateway_id, gateway_id, nat_gateway_id, local_gateway_id, instance_id, network_interface_id, transit_gateway_id, vpc_peering_connection_id, vpc_endpoint_id
resource "aws_route" "route_1" {
  route_table_id         = aws_route_table.another_rt.id
  destination_cidr_block = "10.0.1.0/24"
  nat_gateway_id         = aws_nat_gateway.gw.id
  #   depends_on                = [aws_route_table.testing]
}

