terraform {
  required_providers {
    docker = {
      #https://registry.terraform.io/providers/kreuzwerker/docker/latest/docs/resources/container
      source = "kreuzwerker/docke"
      version = "3.0.2"
    }
  }
}

provider "docker" {
  host = "unix:///var/run/docker.sock"
}