terraform {
  required_version = "1.9.7"
  required_providers {
    minio = {
      source = "aminueza/minio"
      version = "2.2.0"
    }
  }
}