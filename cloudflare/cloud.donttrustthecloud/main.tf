resource "cloudflare_zone" "donttrustthecloud_cloud" {
  zone = "donttrustthecloud.cloud"
  account_id = "b64462c993207214e5e05ebac1b42ac4"
}

resource "cloudflare_record" "games" {
  zone_id = cloudflare_zone.donttrustthecloud_cloud.id
  name    = "games"
  #value   = var.default_ip_value
  type    = var.default_type
  ttl     = var.default_ttl
  proxied = var.proxy_state
}

resource "cloudflare_record" "minecraft" {
  zone_id = cloudflare_zone.donttrustthecloud_cloud.id
  name    = "minecraft"
  #value   = var.default_ip_value
  type    = var.default_type
  ttl     = var.default_ttl
  proxied = var.proxy_state
}

resource "cloudflare_record" "teamspeak" {
  zone_id = cloudflare_zone.donttrustthecloud_cloud.id
  name    = "teamspeak"
  #value   = var.default_ip_value
  type    = var.default_type
  ttl     = var.default_ttl
  proxied = var.proxy_state
}

resource "cloudflare_record" "Minecraft_smp" {
  zone_id = cloudflare_zone.donttrustthecloud_cloud.id
  name    = "_minecraft._tcp.smp"
  type    = "SRV"
  ttl     = var.default_ttl
  proxied = var.proxy_state
  data {
    service  = "_minecraft"
    proto    = "_tcp"
    name     = "smp"
    priority = 0
    weight   = 0
    port     = 65100
    target   = "minecraft.donttrustthecloud.cloud"
  }
}