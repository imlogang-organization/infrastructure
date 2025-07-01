terraform {
  required_version = "1.12.2"
  required_providers {
    docker = {
      #https://registry.terraform.io/providers/kreuzwerker/docker/latest/docs/resources/container
      source = "kreuzwerker/docker"
      version = "3.6.2"
    }
  }
}

provider "docker" {
  host = "unix:///var/run/docker.sock"
}