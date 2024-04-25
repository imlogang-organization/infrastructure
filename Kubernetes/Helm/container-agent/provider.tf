terraform {
  required_providers {
    helm = {
      source = "hashicorp/helm"
      version = "2.13.1"
    }
  }
}

provider "helm" {
  kubernetes {
    config_path = "~/.kube/config"
    }
}