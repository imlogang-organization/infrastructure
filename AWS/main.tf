terraform {
 required_providers {
   aws = {
     source  = "hashicorp/aws"
     version = "~> 3.0"
   }
 }
}
 
resource "aws_instance" "docker_host" {
    ami           = "ami-05fb0b8c1424f266b"
    instance_type = var.instance_type
}