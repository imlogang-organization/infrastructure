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
    config_path = "/home/logan/.kube/config"
    }
}

provider "kubernetes" {
  config_path = "/home/logan/.kube/config"
}