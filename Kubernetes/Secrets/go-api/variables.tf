variable "username" {
  description = "Username for Deluge login"
  type        = string
}

variable "password" {
  description = "Password for Deluge login"
  type = string
}

variable "pg_password" {
  description = "Password for Postgres"
  type = string
}

variable "docker-username" {
  description = "Docker username"
  type = string
}

variable "docker-password" {
  description = "Docker PAT"
  type = string
}

variable "docker-email" {
  description = "Docker email"
  type = string
}