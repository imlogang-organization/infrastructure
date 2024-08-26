resource "docker_image" "tasks_md" {
  name = "baldissaramatheus/tasks.md"
}

resource "docker_image" "homeassistant" {
  name = "ghcr.io/home-assistant/home-assistant:stable"
}

resource "docker_image" "watchtower" {
  name = "containrrr/watchtower"
}