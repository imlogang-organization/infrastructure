terraform {
  required_version = "1.10.5"
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