resource "cloudflare_zone" "donttrustthecloud_cloud" {
  zone = "donttrustthecloud.cloud"
  account_id = "b64462c993207214e5e05ebac1b42ac4"
}

resource "cloudflare_record" "games" {
  zone_id = cloudflare_zone.donttrustthecloud_cloud.id
  name    = "games"
  value   = var.dynamic_public_ip
  type    = var.default_type
  ttl     = var.default_ttl
  proxied = var.proxy_state
}

resource "cloudflare_record" "minecraft" {
  zone_id = cloudflare_zone.donttrustthecloud_cloud.id
  name    = "minecraft"
  value   = var.dynamic_public_ip
  type    = var.default_type
  ttl     = var.default_ttl
  proxied = var.proxy_state
}

resource "cloudflare_record" "teamspeak" {
  zone_id = cloudflare_zone.donttrustthecloud_cloud.id
  name    = "teamspeak"
  value   = var.dynamic_public_ip
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

resource "cloudflare_record" "Minecraft_Modded" {
  zone_id = cloudflare_zone.donttrustthecloud_cloud.id
  name    = "_modded._tcp.smp"
  type    = "SRV"
  ttl     = var.default_ttl
  proxied = var.proxy_state
  data {
    priority = 0
    weight   = 0
    port     = 65203
    target   = "minecraft.donttrustthecloud.cloud"
  }
}

resource "cloudflare_record" "Killing_Floor_2" {
  zone_id = cloudflare_zone.donttrustthecloud_cloud.id
  name    = "kf2"
  value   = var.dynamic_public_ip
  type    = var.default_type
  ttl     = var.default_ttl
  proxied = var.proxy_state
}

resource "cloudflare_record" "plutonium_server" {
  zone_id = cloudflare_zone.donttrustthecloud_cloud.id
  name    = "blops2"
  value   = var.dynamic_public_ip
  type    = var.default_type
  ttl     = var.default_ttl
  proxied = var.proxy_state
}

resource "cloudflare_record" "beamng_server" {
  zone_id = cloudflare_zone.donttrustthecloud_cloud.id
  name    = "beamng"
  value   = var.dynamic_public_ip
  type    = var.default_type
  ttl     = var.default_ttl
  proxied = var.proxy_state
}

resource "cloudflare_record" "npm" {
  zone_id = cloudflare_zone.donttrustthecloud_cloud.id
  name    = "npm"
  value   = "3.133.124.166"
  type    = var.default_type
  ttl     = var.default_ttl
  proxied = var.proxy_state
}

resource "cloudflare_record" "satisfactory" {
  zone_id = cloudflare_zone.donttrustthecloud_cloud.id
  name    = "satisfactory"
  value   = var.dynamic_public_ip
  type    = var.default_type
  ttl     = var.default_ttl
  proxied = var.proxy_state
}