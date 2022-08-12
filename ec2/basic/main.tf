terraform {
  required_providers {
    aws = {
      source  = "hashcorp/aws"
      version = "*-> 3.27"
    }
  }
}

provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

resource "aws_instance" "app_server" {
  ami           = "ami-830c94e3"
  instance_type = "t2.micro"

  tags = {
    Name = "FirstEc2Server"
  }
}
