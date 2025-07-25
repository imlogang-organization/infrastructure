variable "imlogang_organization_container_runner" {
  description = "Auth Token of imlogang-organization Container Runner"
  type        = string
}

variable "logan_container_runner" {
  description   = "Auth Token of logan Container Runner"
  type          = string
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