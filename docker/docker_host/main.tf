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
  restart = var.restart
}

resource "docker_container" "homeassistant" {
  name  = "homeassistant"
  image = docker_image.homeassistant.name
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
  restart = var.restart
  privileged =  var.privileged
}

resource "docker_container" "watchtower" {
  name  = "watchtower"
  image = docker_image.watchtower.name
  volumes {
    container_path = "/var/run/docker.sock"
    host_path      = "/var/run/docker.sock"
  }
  restart = var.restart
}

resource "docker_container" "tautulli" {
  name  = "tautulli"
  image = docker_image.tautulli.name
  env = [
    "PUID=1000",
    "PGID=1000",
    "TZ=Etc/CDT"
  ]
  ports {
    internal = 8181
    external = 8181
  }
  volumes {
    container_path = "/config"
    host_path      = "${var.home_directory}/tautulli/config"
  }
  restart = var.restart
}

resource "docker_container" "homearr" {
  name  = "homearr"
  image = docker_image.homearr.name
  env = [
    "PUID=1000",
    "PGID=1000",
    "TZ=America/Chicago"
  ]
  ports {
    internal = 7575
    external = 7575
  }
  volumes {
    container_path = "/var/run/docker.sock"
    host_path      = "/var/run/docker.sock"
  }
  volumes {
    container_path = "/app/data/configs"
    host_path      = "${var.home_directory}/homarr/configs"
  }
  volumes {
    container_path = "/app/public/icons"
    host_path      = "${var.home_directory}/homarr/icon"
  }
  restart = var.restart
}

resource "docker_container" "dokuwiki" {
  name  = "dokuwiki"
  image = docker_image.dokuwiki.name
  env = [
    "PUID=1000",
    "PGID=1000",
    "TZ=ACDT/UTC",
  ]
  ports {
    internal = 80
    external = 3003
  }
  volumes {
    container_path = "/config"
    host_path      = "${var.home_directory}/dokuwiki/config"
  }
  restart = var.restart
}

resource "docker_container" "uptime-kuma" {
  name  = "uptime-kuma"
  image = docker_image.dokuwiki.name
  env = [
    "PUID=1000",
    "PGID=1000",
    "TZ=ACDT/UTC",
  ]
  ports {
    internal = 3001
    external = 3001
  }
  volumes {
    container_path = "/app/data"
    host_path      = "${var.home_directory}/uptime-kuma"
  }
  restart = var.restart
}