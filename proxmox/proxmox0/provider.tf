terraform {
  required_version = "1.9.7"
  required_providers {
    proxmox = {
      source = "Telmate/proxmox"
      version = "3.0.1-rc4"
    }
  }
}

provider "proxmox" {
  pm_api_url   = var.proxmox0_api_url
  pm_api_token_id = var.proxmox0_user
  pm_api_token_secret = var.proxmox0_pass
  pm_tls_insecure = true
}