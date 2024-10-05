terraform {
  required_version = "1.9.7"
  required_providers {
    kubernetes = {
      source = "hashicorp/kubernetes"
      version = "2.32.0"
    }
    google = {
      source = "hashicorp/google"
      version = "6.5.0"
    }
  }
}
provider "google" {
  project = var.project
  region  = var.region
}

data "google_client_config" "default" {}

provider "kubernetes" {
  host  = "https://${data.google_container_cluster.circleci-server.endpoint}"
  token = data.google_client_config.default.access_token

  client_certificate     = base64decode(data.google_container_cluster.circleci-server.master_auth[0].client_certificate)
  client_key             = base64decode(data.google_container_cluster.circleci-server.master_auth[0].client_key)
  cluster_ca_certificate = base64decode(data.google_container_cluster.circleci-server.master_auth[0].cluster_ca_certificate)
}