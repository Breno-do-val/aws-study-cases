resource "aws_key_pair" "br-ec2-key" {
  key_name   = "my_ec2_key"
  public_key = file("./br-ec2-key.pub")
}
