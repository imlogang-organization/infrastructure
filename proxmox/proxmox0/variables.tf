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

variable "os_type" {
  description = "Typical OS Type"
  type = string
  default = "ubuntu"
}

variable "target_node" {
  description = "Target node"
  type = string
  default = "proxmox0"
}

variable "os_template" {
  description = "Default Template to create VMs on."
  type = string
  default = "ubuntu-24-04-server-template"
}