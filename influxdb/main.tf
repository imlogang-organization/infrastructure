resource "influxdb_database" "mc-server-count" {
  name = "mc-server-count"
  
  retention_policies {
    name     = var.name
    duration = var.duration
  }
}