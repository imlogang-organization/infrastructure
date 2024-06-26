variable "cloudflare_api_token" {
    description = "API Token for Cloudflare"
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

variable "dynamic_public_ip" {
    description = "Dynamic IP derived from curl."
}