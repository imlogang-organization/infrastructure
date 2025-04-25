terraform {
  required_version = "1.11.4"
  required_providers {
    helm = {
      source = "hashicorp/helm"
      version = ">=2.0.0"
    }
    null = {
      source  = "hashicorp/null"
      version = "~> 3.0"  # You can specify a more specific version if needed
    }
    kubernetes = {
      source = "hashicorp/kubernetes"
      version = "2.32.0"
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