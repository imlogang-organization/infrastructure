terraform {
  required_version = "1.11.4"
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