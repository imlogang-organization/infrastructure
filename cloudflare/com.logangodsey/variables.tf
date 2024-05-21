variable "cloudflare_api_token" {
    description = "API Token for Cloudflare"
    default = "8agJFRO9rcIpPF-Ll9t2uMBzB5dlaNKHISfa6edC"
}

variable "default_ip_value" {
    description = "The default IP that each A record will typically get."
    default = "1.1.1.1"
}

variable "proxy_state" {
    description = "The default Proxy State."
    default = false
}

variable "default_type" {
    description = "Most of my hosts will be an A record."
    default = "A"
}

variable "default_ttl" {
    description = "Default TTL."
    default = 1
}

variable "current_external_ip" {
    description = "Logan's External IP."
    default = "104.10.161.114"
}

variable "gcp_external_ip" {
    description = "GCP Server External IP."
    default = "35.224.87.105"
}

variable "docker_host" {
    description = "IP of Internal Docker Host"
    default = "192.168.30.172"
}

variable "ec2_docker_host" {
    description = "EC2 IP."
    default = "3.133.124.166"
}

variable "minecraftdell_ip" {
    description = "IP of Internal Minecraft Host."
    default = "192.168.10.101"
}

variable "dynamic_public_ip" {
    description = "Dynamic IP derived from curl."
}