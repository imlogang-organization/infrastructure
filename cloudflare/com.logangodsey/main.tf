resource "cloudflare_zone" "logangodsey_com" {
  zone = "logangodsey.com"
  account_id = "b64462c993207214e5e05ebac1b42ac4"
}

resource "cloudflare_record" "app_cciserver" {
  zone_id = cloudflare_zone.logangodsey_com.id
  name    = "app.cciserver"
  value   = var.current_external_ip
  type    = var.default_type
  ttl     = var.default_ttl
  proxied = var.proxy_state
}

resource "cloudflare_record" "cciserver" {
  zone_id = cloudflare_zone.logangodsey_com.id
  name    = "cciserver"
  value   = var.current_external_ip
  type    = var.default_type
  ttl     = var.default_ttl
  proxied = var.proxy_state
}

resource "cloudflare_record" "app_gcp" {
  zone_id = cloudflare_zone.logangodsey_com.id
  name    = "app.gcp"
  value   = var.gcp_external_ip
  type    = var.default_type
  ttl     = var.default_ttl
  proxied = var.proxy_state
}

resource "cloudflare_record" "gcp" {
  zone_id = cloudflare_zone.logangodsey_com.id
  name    = "gcp"
  value   = var.gcp_external_ip
  type    = var.default_type
  ttl     = var.default_ttl
  proxied = var.proxy_state
}

resource "cloudflare_record" "dockerregistry" {
  zone_id = cloudflare_zone.logangodsey_com.id
  name    = "dockerregistry"
  value   = var.docker_host
  type    = var.default_type
  ttl     = var.default_ttl
  proxied = var.proxy_state
}

resource "cloudflare_record" "games" {
  zone_id = cloudflare_zone.logangodsey_com.id
  name    = "games"
  value   = var.dynamic_public_ip
  type    = var.default_type
  ttl     = var.default_ttl
  proxied = var.proxy_state
}

resource "cloudflare_record" "influxdb2" {
  zone_id = cloudflare_zone.logangodsey_com.id
  name    = "influxdb2"
  value   = var.ec2_docker_host
  type    = var.default_type
  ttl     = var.default_ttl
  proxied = var.proxy_state
}

resource "cloudflare_record" "minecraftdell" {
  zone_id = cloudflare_zone.logangodsey_com.id
  name    = "minecraftdell"
  value   = var.minecraftdell_ip
  type    = var.default_type
  ttl     = var.default_ttl
  proxied = var.proxy_state
}

resource "cloudflare_record" "minecraft" {
  zone_id = cloudflare_zone.logangodsey_com.id
  name    = "minecraft"
  value   = var.dynamic_public_ip
  type    = var.default_type
  ttl     = var.default_ttl
  proxied = var.proxy_state
}

resource "cloudflare_record" "openvpn" {
  zone_id = cloudflare_zone.logangodsey_com.id
  name    = "openvpn"
  value   = var.dynamic_public_ip
  type    = var.default_type
  ttl     = var.default_ttl
  proxied = var.proxy_state
}

resource "cloudflare_record" "uptimekuma" {
  zone_id = cloudflare_zone.logangodsey_com.id
  name    = "uptimekuma"
  value   = var.ec2_docker_host
  type    = var.default_type
  ttl     = var.default_ttl
  proxied = var.proxy_state
}

resource "cloudflare_record" "wireguard" {
  zone_id = cloudflare_zone.logangodsey_com.id
  name    = "wireguard"
  value   = var.dynamic_public_ip
  type    = var.default_type
  ttl     = var.default_ttl
  proxied = var.proxy_state
}

resource "cloudflare_record" "minio_public" {
  zone_id = cloudflare_zone.logangodsey_com.id
  name    = "minio_public"
  value   = var.dynamic_public_ip
  type    = var.default_type
  ttl     = var.default_ttl
  proxied = var.proxy_state
}

resource "cloudflare_record" "root_website" {
  zone_id = cloudflare_zone.logangodsey_com.id
  name    = "3.133.124.166"
  value   = ""
  type    = var.default_type
  ttl     = var.default_ttl
  proxied = true
}
