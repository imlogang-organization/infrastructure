#!/bin/bash

cat > backend.tf << EOF
terraform {
  backend "s3" {
    endpoint        = "${MINIO_URL}"
    bucket          = "${BUCKET_NAME}"
    key             = "AWS/terraform.tfstate"
    region          = "${REGION}"
    access_key      = "${MINIO_ACCESS_KEY}"
    secret_key      = "${MINIO_SECRET_KEY}"
    skip_credentials_validation = true
    skip_metadata_api_check     = true
    force_path_style            = true
    skip_requesting_account_id  = true
  }
}
EOF

echo "Backend script created"