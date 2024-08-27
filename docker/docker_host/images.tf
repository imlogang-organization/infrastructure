resource "docker_image" "tasks_md" {
  name = "baldissaramatheus/tasks.md"
}

resource "docker_image" "homeassistant" {
  name = "ghcr.io/home-assistant/home-assistant:stable"
}

resource "docker_image" "watchtower" {
  name = "containrrr/watchtower"
}

resource "docker_image" "tautulli" {
  name = "lscr.io/linuxserver/tautulli:latest"
}

resource "docker_image" "homearr" {
  name = "ghcr.io/ajnart/homarr:latest"
}

resource "docker_image" "dokuwiki" {
  name = "lscr.io/linuxserver/dokuwiki:latest"
}

resource "docker_image" "uptime-kuma" {
  name = "louislam/uptime-kuma:1"
}