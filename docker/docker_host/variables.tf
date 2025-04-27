variable "restart" {
  default = "unless-stopped"
  description = "Restart cadance of Docker Container."
  type = string
}

variable "home_directory" {
  type    = string
  default = "/home/logan"  # Adjust this to your actual home directory
}

variable "privileged" {
  type = bool
  default = true
}

variable "docker_influxdb_init_password" {
  type        = string
  description = "The initial password for InfluxDB"
  default     = ""
}

variable "dmr3-api-auth-token" {
  type = string
  description = "CircleCI Runner API Token for Docker Runner Server MR3"
}

variable "grafana_client_id" {
  type = string
  description = "The Client ID from Authentik for Grafana"
}

variable "grafana_client_secret" {
  type = string
  description = "The Client Secret from Authentik for Grafana"
}