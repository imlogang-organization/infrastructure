terraform {
  required_providers {
    influxdb = {
      #https://registry.terraform.io/providers/DrFaust92/influxdb/latest/docs
      source = "DrFaust92/influxdb"
      version = "1.6.1"
    }
  }
}

provider "influxdb" {
  url      = "https://influxdb.logangodsey.com"
  username = "root"
}