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
  name = "louislam/uptime-kuma:latest"
}

resource "docker_image" "sonarr" {
  name = "lscr.io/linuxserver/sonarr:latest"
}

resource "docker_image" "jackett" {
  name = "lscr.io/linuxserver/jackett:latest"
}

resource "docker_image" "dashdot" {
  name = "mauricenino/dashdot"
}

resource "docker_image" "influxdb2" {
  name = "influxdb:2.6"
}

resource "docker_image" "dozzle" {
  name = "amir20/dozzle:latest"
}

resource "docker_image" "docker-gc" {
  name = "clockworksoul/docker-gc-cron:latest"
}

resource "docker_image" "registry-server" {
  name = "registry:latest"
}

resource "docker_image" "registry-ui" {
  name = "joxit/docker-registry-ui:main"
}

resource "docker_image" "npm-ui" {
  name = "jc21/nginx-proxy-manager:latest"
}

resource "docker_image" "npm-db" {
  name = "jc21/mariadb-aria:latest"
}

resource "docker_image" "grafana" {
  name = "grafana/grafana-oss:main"
}

resource "docker_image" "wireguard" {
  name = "lscr.io/linuxserver/wireguard:latest"
}

resource "docker_image" "filebrowser" {
  name = "filebrowser/filebrowser:latest"
}

resource "docker_image" "graphite" {
  name = "graphiteapp/graphite-statsd"
}

resource "docker_image" "docker-runner-server-mr3" {
  name = "dockerregistry.logangodsey.com/docker-runner-server-mr3:10-17-2024"
}

resource "docker_image" "telegraf" {
  name = "telegraf"
}