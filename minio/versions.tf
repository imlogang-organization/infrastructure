terraform {
  required_version = "1.11.0"
  required_providers {
    minio = {
      source = "aminueza/minio"
      version = "2.2.0"
    }
  }
}