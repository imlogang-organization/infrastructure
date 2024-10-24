resource "docker_network" "npm_network" {
  name = "npm-network"
}

resource "docker_network" "registry_network" {
  name = "registry-network"
}

resource "docker_network" "metric_stack" {
  name = "metric-stack"
}


resource "docker_network" "telegraf-net" {
  name = "telegraf-net"
}