# Subnet #1 for Staging VPC
resource "aws_subnet" "staging_1" {
  vpc_id     = aws_vpc.staging.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "Staging Main Subnet 1"
  }
}

# Subnet #2 for Staging VPC
resource "aws_subnet" "staging_2" {
  vpc_id     = aws_vpc.staging.id
  cidr_block = "10.0.2.0/24"

  tags = {
    Name = "Staging Main Subnet 2"
  }
}

##
# Handle Default Subnets (Default VPC)
##

resource "aws_default_subnet" "us_east_1a" {
  availability_zone = "us-east-1a" # required

  tags = {
    Name = "Default subnet for us-east-1a"
  }
}

resource "aws_default_subnet" "us_east_1b" {
  availability_zone = "us-east-1b" # required

  tags = {
    Name = "Default subnet for us-east-1b"
  }
}

resource "aws_default_subnet" "us_east_1c" {
  availability_zone = "us-east-1c" # required

  tags = {
    Name = "Default subnet for us-east-1c"
  }
}

resource "aws_default_subnet" "us_east_1d" {
  availability_zone = "us-east-1d" # required

  tags = {
    Name = "Default subnet for us-east-1d"
  }
}

resource "aws_default_subnet" "us_east_1e" {
  availability_zone = "us-east-1e" # required

  tags = {
    Name = "Default subnet for us-east-1e"
  }
}

resource "aws_default_subnet" "us_east_1f" {
  availability_zone = "us-east-1f" # required

  tags = {
    Name = "Default subnet for us-east-1f"
  }
}
