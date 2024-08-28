resource "docker_network" "npm_network" {
  name = "npm-network"
}

resource "docker_network" "registry_network" {
  name = "registry-network"
}