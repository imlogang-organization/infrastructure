variable "cloudflare_api_token" {
    description = "API Token for Cloudflare"
    type = string
}

variable "proxy_state" {
    description = "The default Proxy State."
    default = false
    type = bool
}

variable "default_type" {
    description = "Most of my hosts will be an A record."
    default = "A"
    type = string
}

variable "default_ttl" {
    description = "Default TTL."
    default = 1
    type = string
}

variable "dynamic_public_ip" {
    description = "Dynamic IP derived from curl."
    type = string
}