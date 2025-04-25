terraform {
  required_version = "1.10.5"
  required_providers {
    minio = {
      source = "aminueza/minio"
      version = "2.2.0"
    }
  }
}