
variable "aws_region" {
    default = "us-east-1"
}

variable "aws_security_group_name" {
    default = "grupo do wess"
}

variable "ami" {
    default = "ami-0fc5d935ebf8bc3bc"
}

variable "instance_type" {
    default = "t2.micro"
}

variable "key_name" {
    default = "ssh-key-wess"
}

variable "public_key" {
    default = ""
}
