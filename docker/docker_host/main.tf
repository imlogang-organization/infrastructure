resource "docker_container" "tasks_md_container" {
  name  = "tasks.md"
  image = docker_image.tasks_md.name
  env = [
    "PUID=1000",
    "PGID=1000",
    "TITLE=Tasks"
  ]
  ports {
    internal = 8080
    external = 8080
  }
  volumes {
    container_path = "/tasks/"
    host_path      = "${var.home_directory}/tasks/files"
  }
  volumes {
    container_path = "/api/static/stylesheets/"
    host_path      = "${var.home_directory}/tasks/stylesheets"
  }
  volumes {
    container_path = "/api/images/"
    host_path      = "${var.home_directory}/tasks/images"
  }
  volumes {
    container_path = "/config/"
    host_path      = "${var.home_directory}/tasks/config"
  }
  restart = "unless-stopped"
}

resource "docker_container" "homeassistant" {
  name  = "homeassistant"
  image = docker_image.tasks_md.name
  env = [
    "TZ=America/Chicago"
  ]
  ports {
    internal = 8123
    external = 8123
  }
  volumes {
    container_path = "/config"
    host_path      = "${var.home_directory}/homeassistant"
  }
  restart = "unless-stopped"
  privlaged =  true
}

