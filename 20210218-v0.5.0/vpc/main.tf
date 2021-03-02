resource "aws_security_group" "supersecure" {
  name        = "supersecure"
  description = "Super Secure Security Group"

  tags = {
    Name = "Super Secure Security Group"
  }
}


resource "aws_security_group_rule" "supersecure_sg_rule_1" {
  type              = "ingress"
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
  cidr_blocks       = ["10.0.0.0/8"]
  security_group_id = aws_security_group.supersecure.id
}

resource "aws_security_group" "inline-sg" {
  name        = "inline-rules"
  description = "Inline Rules Security Group"

  tags = {
    Name = "Inline Rules Security Group"
  }

  ingress {
    description = "HTTPS"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["1.1.1.1/32"]
  }

}
