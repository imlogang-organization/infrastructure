variable "aws_region" {
    description = "The default region for AWS."
    default = "us-east-2"
    type    = string
}

variable "instance_type" {
    description = "Instance type in AWS"
    default = "t2.micro"
    type    = string
}
variable "runner_ami" {
    description = "The AMI for Runner Instance"
    default = "ami-0f30a9c3a48f3fa79" 
    type    = string
}
variable "has_public_ip" {
    description = "If the Instance should have a public IP"
    default = true
    type    = string
}
variable "ec2_ssh_key_name" {
    description = "The keypair name in AWS"
    default = "aws-ec2-mac"
    type    = string
}
variable "http_endpoint" {
    description = "HTTP endpoint needed to enable IMDSv2"
    default = "enabled"
    type    = string
}
variable "http_tokens" {
    description = "HTTP Token needed to enable IMDSv2"
    default = "required"
    type    = string
}