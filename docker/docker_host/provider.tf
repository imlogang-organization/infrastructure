terraform {
  required_providers {
    docker = {
      #https://registry.terraform.io/providers/calxus/docker/latest/docs/resources/image
      source = "calxus/docker"
      version = "3.0.0"
    }
  }
}

provider "docker" {
  host = "unix:///var/run/docker.sock"
}