terraform {
  required_version = "1.10.5"
  required_providers {
    kubernetes = {
      source = "hashicorp/kubernetes"
      version = "2.32.0"
    }
  }
}
provider "kubernetes" {
  config_path = "/home/logan/.kube/config"
}