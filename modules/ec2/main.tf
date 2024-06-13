resource "aws_instance" "bastion" {
  ami              = var.ami
  instance_type    = var.instance_type
  subnet_id        = var.public_subnet_id
  security_groups  = var.server_sg_id
  key_name         = var.key_name


  tags = {
    Name = var.name
  }
}


resource "aws_instance" "private" {
  ami              = var.ami
  instance_type    = var.instance_type
  subnet_id        = var.private_subnet_id
  security_groups  = var.server_sg_id
  key_name         = var.key_name

  tags = {
    Name = var.name
  }
}
