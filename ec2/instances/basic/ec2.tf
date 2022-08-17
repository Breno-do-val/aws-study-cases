resource "aws_instance" "app_server" {
  ami             = var.ami
  instance_type   = var.instance_type
  key_name        = aws_key_pair.br-ec2-key.key_name
  security_groups = ["ec2-ssh-http"]
  tags = {
    Name = "FirstEc2Server"
  }
}
