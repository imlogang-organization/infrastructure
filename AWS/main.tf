terraform {
 required_providers {
   aws = {
     source  = "hashicorp/aws"
     version = "~> 5.0"
   }
 }
}
 
resource "aws_instance" "docker_host" {
    ami           = "ami-05fb0b8c1424f266b"
    instance_type = var.instance_type
}

resource "aws_instance" "runner_host" {
    ami           = var.runner_ami
    instance_type = var.instance_type
    associate_public_ip_address = var.has_public_ip
}