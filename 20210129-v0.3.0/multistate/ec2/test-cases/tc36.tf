resource "aws_instance" "tc36_instance_1" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t3.micro"

  tags = {
    Name = "tc36_instance_1"
  }

  volume_tags = {
    Name = "tc36_rootVol"
  }

  root_block_device {
    volume_type           = "gp2"
    volume_size           = 20
    delete_on_termination = true
  }
}

resource "aws_eip" "eip_tc36_instance" {
    tags = {
        Name = "eip_tc36_instance"
    }
}

resource "aws_eip_association" "eip_assoc_instance_1" {
  instance_id   = aws_instance.tc36_instance_1.id
  allocation_id = aws_eip.eip_tc36_instance.id
}