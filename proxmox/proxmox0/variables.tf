variable "proxmox0_user" {
  description = "User for Proxmox0"
  type = string
}

variable "proxmox0_pass" {
  description = "Password for Proxmox0"
  type = string
}

variable "proxmox0_api_url" {
  description = "API URL for Proxmox0"
  type = string
  default = "https://proxmox0.logangodsey.com:8006/api2/json"
}