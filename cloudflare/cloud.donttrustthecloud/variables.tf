variable "cloudflare_api_token" {
    description = "API Token for Cloudflare"
    default = ""
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