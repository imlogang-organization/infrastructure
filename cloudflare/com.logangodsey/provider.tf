# https://registry.terraform.io/providers/cloudflare/cloudflare/latest/docs
# need to see if there's a way to import
terraform {
  required_version = "1.10.5"
  required_providers {
    cloudflare = {
      source = "cloudflare/cloudflare"
      version = "4.30.0"
    }
  }
}

provider "cloudflare" {
  api_token = var.cloudflare_api_token
}