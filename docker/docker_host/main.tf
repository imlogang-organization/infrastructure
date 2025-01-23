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
    "TZ=CDT/UTC"
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
  image = docker_image.uptime-kuma.name
  env = [
    "PUID=1000",
    "PGID=1000",
    "TZ=CDT/UTC",
  ]
  ports {
    internal = 3001
    external = 3001
  }
  volumes {
    container_path = "/app/data"
    host_path      = "${var.home_directory}/uptime-kuma"
  }
  volumes {
    container_path = "/var/run/docker.sock"
    host_path      = "/var/run/docker.sock"
  }
  restart = var.restart
  
}

resource "docker_container" "sonarr" {
  name  = "sonarr"
  image = docker_image.sonarr.name
  env = [
    "PUID=1000",
    "PGID=1000",
    "TZ=CDT/UTC",
  ]
  ports {
    internal = 8989
    external = 8989
  }
  volumes {
    container_path = "/config"
    host_path      = "${var.home_directory}/sonarr/config"
  }
  volumes {
    container_path = "/tv_nfs/TV Shows"
    host_path      = "${var.home_directory}/nas/tv_shows_nfs/TV Shows"
  }
  volumes {
    container_path = "/mnt/Volume"
    host_path      = "${var.home_directory}/nas/media_nas3"
  }
  restart = var.restart
  
}

resource "docker_container" "jackett" {
  name  = "jackett"
  image = docker_image.jackett.name
  env = [
    "PUID=1000",
    "PGID=1000",
    "TZ=Etc/CDT",
  ]
  ports {
    internal = 9117
    external = 9117
  }
  volumes {
    container_path = "/downloads"
    host_path      = "${var.home_directory}/jackett/blackhole"
  }
  volumes {
    container_path = "/config"
    host_path      = "${var.home_directory}/jackett/config"
  }
  restart = var.restart
}

resource "docker_container" "dashdot" {
  name  = "dashdot"
  image = docker_image.dashdot.name
  env = [
    "PUID=1000",
    "PGID=1000",
    "TZ=Etc/CDT",
  ]
  ports {
    internal = 3001
    external = 85
  }
  volumes {
    container_path = "/etc/os-release"
    host_path      = "/etc/os-release"
    read_only      = true
  }

  volumes {
    container_path = "/mnt/host_ns_net"
    host_path      = "/proc/1/ns/net"
    read_only      = true
  }
  restart = var.restart
  privileged = var.privileged
  
}

resource "docker_container" "influxdb2" {
  name  = "influxdb2"
  image = docker_image.influxdb2.name
  env = [
    "DOCKER_INFLUXDB_INIT_MODE=setup",
    "DOCKER_INFLUXDB_INIT_USERNAME=root",
    "DOCKER_INFLUXDB_INIT_ORG=imlogang",
    "DOCKER_INFLUXDB_INIT_PASSWORD=${var.docker_influxdb_init_password}",
    "DOCKER_INFLUXDB_INIT_ADMIN_TOKEN=secret-token",
    "DOCKER_INFLUXDB_INIT_BUCKET=docker_host"
  ]
  ports {
    internal = 8086
    external = 8086
  }
  volumes {
    container_path = "/var/lib/influxdb2"
    host_path      = "${var.home_directory}/influxdb/data"
  }
  volumes {
    container_path = "/etc/influxdb2"
    host_path      = "${var.home_directory}/influxdb/config"
  }
  restart = var.restart
  
}

resource "docker_container" "dozzle" {
  name  = "dozzle"
  image = docker_image.dozzle.name
  env = [
    "DOCKER_INFLUXDB_INIT_MODE=setup",
    "DOCKER_INFLUXDB_INIT_USERNAME=root",
    "DOCKER_INFLUXDB_INIT_ORG=imlogang",
    "DOCKER_INFLUXDB_INIT_PASSWORD=${var.docker_influxdb_init_password}",
    "DOCKER_INFLUXDB_INIT_ADMIN_TOKEN=secret-token"
  ]
  ports {
    internal = 8080
    external = 8888
  }
  volumes {
    container_path = "/var/run/docker.sock"
    host_path      = "/var/run/docker.sock"
  }
  restart = var.restart
  
}

resource "docker_container" "dockekr-gc" {
  name  = "docker-gc"
  image = docker_image.docker-gc.name
  env = [
    "CRON=0 */4 * * *",
    "FORCE_IMAGE_REMOVAL=1",
    "FORCE_CONTAINER_REMOVAL=1",
    "GRACE_PERIOD_SECONDS=3600",
    "DRY_RUN=0",
    "CLEAN_UP_VOLUMES=1",
    "TZ=America/Chicago"
  ]
  volumes {
    container_path = "/var/run/docker.sock"
    host_path      = "/var/run/docker.sock"
  }
  volumes {
    container_path = "/etc/docker-gc-exclude"
    host_path      = "${var.home_directory}/docker-gc/docker-gc-exclude"
  } 
  restart = var.restart
  
}


resource "docker_container" "registry_server" {
  name  = "registry-server"
  image = docker_image.registry-server.name
  restart = var.restart
  

  env = [
    "REGISTRY_HTTP_HEADERS_Access-Control-Allow-Origin=[http://dockerregistry.logangodsey.com:5001]",
    "REGISTRY_HTTP_HEADERS_Access-Control-Allow-Methods=[HEAD,GET,OPTIONS,DELETE]",
    "REGISTRY_HTTP_HEADERS_Access-Control-Allow-Credentials=[true]",
    "REGISTRY_HTTP_HEADERS_Access-Control-Allow-Headers=[Authorization,Accept,Cache-Control]",
    "REGISTRY_HTTP_HEADERS_Access-Control-Expose-Headers=[Docker-Content-Digest]",
    "REGISTRY_STORAGE_DELETE_ENABLED=true"
  ]

  volumes {
    container_path = "/var/lib/registry"
    host_path      = "${var.home_directory}/registry/data"
  }
  networks_advanced {
    name = docker_network.registry_network.name
  }
}

resource "docker_container" "registry-ui" {
  name  = "registry-ui"
  image = docker_image.registry-ui.name
  restart = var.restart
  

  ports {
    internal = 80
    external = 5001
  }

  env = [
    "SINGLE_REGISTRY=true",
    "REGISTRY_TITLE=Docker Registry UI",
    "DELETE_IMAGES=true",
    "SHOW_CONTENT_DIGEST=true",
    "NGINX_PROXY_PASS_URL=http://registry-server:5000",
    "SHOW_CATALOG_NB_TAGS=true",
    "CATALOG_MIN_BRANCHES=1",
    "CATALOG_MAX_BRANCHES=1",
    "TAGLIST_PAGE_SIZE=100",
    "REGISTRY_SECURED=false",
    "CATALOG_ELEMENTS_LIMIT=1000"
  ]
  networks_advanced {
    name = docker_network.registry_network.name
  }
}

resource "docker_container" "npm-ui" {
  name  = "npm-ui"
  image = docker_image.npm-ui.name
  restart = var.restart
  

  ports {
    internal = 80
    external = 80
  }
  ports {
    internal = 81
    external = 81
  }
  ports {
    internal = 443
    external = 443
  }

  env = [
    "DB_MYSQL_HOST=npm-db",
    "DB_MYSQL_PORT=3306",
    "DB_MYSQL_USER=npm",
    "DB_MYSQL_PASSWORD=npm",
    "DB_MYSQL_NAME=npm",
    "DISABLE_IPV6=true"
  ]
  
  volumes {
    container_path = "/data"
    host_path      = "${var.home_directory}/npm/data"
  }
  volumes {
    container_path = "/etc/letsencrypt"
    host_path      = "${var.home_directory}/npm/letsencrypt"
  }
  networks_advanced {
    name = docker_network.npm_network.name
  }
}

resource "docker_container" "npm-db" {
  name  = "npm-db"
  image = docker_image.npm-db.name
  restart = var.restart
  

  ports {
    internal = 3306
    external = 3306
  }
  env = [
    "MYSQL_ROOT_PASSWORD=npm",
    "MYSQL_DATABASE=npm",
    "MYSQL_USER=npm",
    "MYSQL_PASSWORD=npm",
  ]
  
  volumes {
    container_path = "/var/lib/mysql"
    host_path      = "${var.home_directory}/npm/mysql"
  }
  networks_advanced {
    name = docker_network.npm_network.name
  }
}

resource "docker_container" "wireguard" {
  name  = "wireguard"
  image = docker_image.wireguard.name
  restart = var.restart
  

  ports {
    internal = 51820
    external = 51820
    protocol = "udp"
  }
  env = [
    "PUID=1000",
    "PGID=1000",
    "TZ=America/Chicago",
    "SERVERURL=wireguard.logangodsey.com",
    "SERVERPORT=51820",
    "PEERS=logan,dadrouter,loganrouter,dadlaptop,loganipad11in,logani7mac,",
    "PEERDNS=192.168.30.1",
    "INTERNAL_SUBNET=10.13.13.0",
    "PERSISTENTKEEPALIVE_PEERS=15",
    "LOG_CONFS=true"
  ]
  
  volumes {
    container_path = "/config"
    host_path      = "${var.home_directory}/wireguard/config"
  }
  volumes {
    container_path = "/lib/modules"
    host_path      = "/lib/modules"
  }

  capabilities {
    add = [
      "NET_ADMIN",
      "SYS_MODULE"
    ]
  }

  sysctls = {
    "net.ipv4.conf.all.src_valid_mark" = "1"
  }
}

resource "docker_container" "filebrowser" {
  name  = "filebrowser"
  image = docker_image.filebrowser.name
  
  env = [
    "PUID=1000",
    "PGID=1000"
  ]

  volumes {
    container_path = "/srv"
    host_path      = "${var.home_directory}/filebrowser"
  }

  volumes {
    container_path = "/database/filebrowser.db"
    host_path      = "${var.home_directory}/filebrowser/filebrowser.db"
  }

  volumes {
    container_path = "/config/settings.json"
    host_path      = "${var.home_directory}/filebrowser/settings.json"
  }

  volumes {
    container_path = "/srv/Home"
    host_path      = var.home_directory
  }
  ports {
    internal = 80
    external = 8081
  }

  restart = var.restart
  
}

resource "docker_container" "grafana" {
  name = "grafana"
  image = docker_image.grafana.name

  ports {
    internal = 3000
    external = 3000
  }
  volumes {
    volume_name = "grafana-storage"
    container_path = "/var/lib/grafana"
  }

  restart = var.restart
  
  }

resource "docker_container" "graphite" {
  name = "graphite"
  image = docker_image.graphite.name

  ports {
    internal = 80
    external = 82
  }
  ports {
    internal = 2003
    external = 2003
  }
  ports {
    internal = 2004
    external = 2004
  }
  ports {
    internal = 2023
    external = 2023
  }
  ports {
    internal = 2024
    external = 2024
  }
  ports {
    internal = 8125
    external = 8125
    protocol = "udp"
  }
  ports {
    internal = 8126
    external = 8126
  }

  volumes  {
    container_path = "/opt/graphite/conf"
    host_path      = "${var.home_directory}/graphite/configs"
  }
  volumes {
    container_path = "/opt/graphite/storage"
    host_path      = "${var.home_directory}/graphite/data"
  }
  volumes {
    container_path = "/opt/statsd/config"
    host_path      = "${var.home_directory}/graphite/statsd_config"
  }
  restart = var.restart
  
}

resource "docker_container" "docker-runner-server-mr3" {
  name = "docker-runner-server-mr3"
  image = docker_image.docker-runner-server-mr3.name
  env = [
    "CIRCLECI_RUNNER_NAME=docker-runner-server-mr3",
    "CIRCLECI_RUNNER_API_AUTH_TOKEN=${var.dmr3-api-auth-token}",
    "CIRCLECI_RUNNER_API_URL=https://cciserver.logangodsey.com",
    "CIRCLECI_RUNNER_CLEANUP_WORK_DIR=true"
  ]
  restart = var.restart
  
}

resource "docker_container" "telegraf" {
  name = "telegraf"
  image = docker_image.telegraf.name
  networks_advanced {
    name = docker_network.telegraf-net.name
  }
  volumes  {
    container_path = "/etc/telegraf/"
    host_path      = "${var.home_directory}/telegraf/"
  }
  restart = var.restart
  
}

resource "docker_container" "flaresolverr" {
  name = "flaresolverr"
  image = docker_image.flaresolver.name
  env = [
    "LOG_LEVEL=info"
  ]
  ports {
    internal = 8191
    external = 8191
  }
  restart = var.restart
}