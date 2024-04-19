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
    key_name = var.ec2_ssh_key_name
    tags = {
        Name = "Runner-Host"  
    }
    vpc_security_group_ids = [ aws_security_group.runner.id ]

    metadata_options {
    http_endpoint = var.http_endpoint
    http_tokens   = var.http_tokens
  }
}

resource "aws_security_group" "runner" {
  name        = "runner"
  description = "Allow all Runner"

  ingress {
    from_port   = 0
    to_port     = 65535
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 65535
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "Runner"
  }
}