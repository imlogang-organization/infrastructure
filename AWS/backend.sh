#!/bin/bash

cat > backend.tf << EOF
terraform {
  backend "s3" {
    endpoint        = "${MINIO_URL}"
    bucket          = "${BUCKET_NAME}"
    key             = "${KEY}"
    region          = "${REGION}"
    access_key      = "${MINIO_ACCESS_KEY}"
    secret_key      = "${MINIO_SECRET_KEY}"
    skip_credentials_validation = true
    skip_metadata_api_check     = true
    force_path_style            = true
  }
}
EOF