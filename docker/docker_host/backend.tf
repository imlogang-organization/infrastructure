terraform {
  backend "s3" {
    endpoint        = "${var.minio_url}"
    bucket          = "${var.bucket_name}"
    key             = "docker/docker_host/terraform.tfstate"
    region          = "${var.region}"
    access_key      = "${var.minio_access_key}"
    secret_key      = "${var.minio_secret_key}"
    skip_credentials_validation = true
    skip_metadata_api_check     = true
    force_path_style            = true
    skip_requesting_account_id  = true
  }
}
