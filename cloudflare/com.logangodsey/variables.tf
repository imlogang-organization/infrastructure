variable "cloudflare_api_token" {
    description = "API Token for Cloudflare"
    type = string
}

variable "proxy_state" {
    description = "The default Proxy State."
    default = false
    type = string
}

variable "default_type" {
    description = "Most of my hosts will be an A record."
    default = "A"
    type = string
}

variable "default_ttl" {
    description = "Default TTL."
    default = 1
    type = number
}

variable "current_external_ip" {
    description = "Logan's External IP."
    default = "104.10.161.114"
    type = string
}

variable "gcp_external_ip" {
    description = "GCP Server External IP."
    default = "34.72.171.16"
    type = string
}

variable "docker_host" {
    description = "IP of Internal Docker Host"
    default = "192.168.30.188"
    type = string
}

variable "ec2_docker_host" {
    description = "EC2 IP."
    default = "3.133.124.166"
    type = string
}

variable "minecraftdell_ip" {
    description = "IP of Internal Minecraft Host."
    default = "192.168.10.101"
    type = string
}

variable "dynamic_public_ip" {
    description = "Dynamic IP derived from curl."
    type = string
}