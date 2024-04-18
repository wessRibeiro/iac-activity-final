terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.74.2"
    }
  }

  required_version = ">= 0.14.9"

}

provider "aws" {
  region  = var.aws_region
}

resource "aws_instance" "app_server" {
  ami           = var.ami
  instance_type = var.instance_type
  key_name      = "minha_key_pair"

  vpc_security_group_ids = [
    var.aws_security_group_name
  ]
}

resource "aws_key_pair" "minha_key_pair" {
  key_name   = var.key_name
  public_key = var.public_key
}

resource "aws_security_group" "grupo_do_wess" {
  name        = var.aws_security_group_name
  description = "grupo de seguranca padrao"
  ingress {
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
  }
  egress {
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
  }
  tags = {
    Name = var.aws_security_group_name
  }
}
