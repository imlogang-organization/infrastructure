terraform {
  required_version = "1.9.7"
  required_providers {
    helm = {
      source = "hashicorp/helm"
      version = ">=2.0.0"
    }
    null = {
      source  = "hashicorp/null"
      version = "~> 3.0"  # You can specify a more specific version if needed
    }
    google = {
      source = "hashicorp/google"
      version = "6.5.0"
    }
    kubernetes = {
      source = "hashicorp/kubernetes"
      version = "2.32.0"
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