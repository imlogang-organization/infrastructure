variable "client_id" {
  description = "Client_ID of prod"
  type        = string
}

variable "beemoviebot" {
  description   = "Beemoviebot Token"
  type          = string
}

variable "pterotoken" {
    description = "Pterodactyl Server Host Token"
    type = string
}

variable "circle_token" {
  description = "CCI Server API Token"
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