terraform {
  required_version = "1.9.7"
}
provider "aws" {
 region = var.aws_region
}
