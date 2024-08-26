variable "restart" {
  default = "unless-stopped"
  description = "Restart cadance of Docker Container."
}

variable "home_directory" {
  type    = string
  default = "/home/logan"  # Adjust this to your actual home directory
}

variable "privileged" {
  type = bool
  default = true
}