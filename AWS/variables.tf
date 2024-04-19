variable "aws_region" {
    description = "The default region for AWS."
    default = "us-east-2"
}

variable "instance_type" {
    description = "Instance type in AWS"
    default = "t2.micro"
}
variable "runner_ami" {
    description = "The AMI for Runner Instance"
    default = "ami-0f30a9c3a48f3fa79" 
}
variable "has_public_ip" {
    description = "If the Instance should have a public IP"
    default = true
}
variable "ec2_ssh_key_name" {
    description = "The keypair name in AWS"
    default = "aws-ec2-mac"
}
variable "http_endpoint" {
    description = "HTTP endpoint needed to enable IMDSv2"
    default = "enabled"
}
variable "http_tokens" {
    description = "HTTP Token needed to enable IMDSv2"
    default = "required"
}