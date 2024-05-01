terraform {
  required_providers {
    helm = {
      source = "hashicorp/helm"
      version = ">=2.0.0"
    }
  }
}

provider "helm" {
  kubernetes {
    host                   = "https://${data.google_container_cluster.circleci-server.endpoint}"
    token                  = data.google_client_config.default.access_token
    client_certificate     = base64decode(data.google_container_cluster.circleci-server.master_auth[0].client_certificate)
    client_key             = base64decode(data.google_container_cluster.circleci-server.master_auth[0].client_key)
    cluster_ca_certificate = base64decode(data.google_container_cluster.circleci-server.master_auth[0].cluster_ca_certificate)
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