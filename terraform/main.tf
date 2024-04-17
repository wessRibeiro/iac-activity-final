terraform {
      required_providers {
        aws = {
          source  = "hashicorp/aws"
          version = "~> 3.74.2"
        }
      }

      required_version = ">= 0.14.9"
      
      backend "s3" {
          bucket = var.bakend_s3_name
          key    = var.bakend_s3_key
          region = var.region
      }

    }

    provider "aws" {
      region = var.region
      version = "~>3.0"
    }

    resource "aws_instance" "app_server" {
      ami = "ami-0fc5d935ebf8bc3bc"
      instance_type = "t2.micro"
      key_name = var.key_name

      vpc_security_group_ids = [
        "acesso_geral"
      ] 
    }

    resource "aws_key_pair" "chaveSSH" {
        key_name = var.key_name
        public_key = var.public_key
    }

    resource "aws_security_group" "acesso_geral" {
      name = "acesso_geral"
      description = "grupo do Dev"
      ingress{
          cidr_blocks = [ "0.0.0.0/0" ]
          ipv6_cidr_blocks = [ "::/0" ]
          from_port = 0
          to_port = 0
          protocol = "-1"
      }
      egress{
          cidr_blocks = [ "0.0.0.0/0" ]
          ipv6_cidr_blocks = [ "::/0" ]
          from_port = 0
          to_port = 0
          protocol = "-1"
      }
      tags = {
        Name = "acesso_geral"
      }
    }