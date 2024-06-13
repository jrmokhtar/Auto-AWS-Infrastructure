resource "tls_private_key" "nader" {
  algorithm   = "RSA"
  rsa_bits    = 2048
}

resource "local_file" "private_key" {
  content  = tls_private_key.nader.private_key_pem
  filename = "ec2_key_pair.pem"
  provisioner "local-exec" {
    command = "chmod 400 ec2_key_pair.pem"
  }
}


resource "aws_key_pair" "nader" {
  key_name   = var.key_name
  public_key = tls_private_key.nader.public_key_openssh
}
