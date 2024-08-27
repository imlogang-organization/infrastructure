terraform {
  backend "s3" {
    endpoint        = "http://192.168.30.145:9001/"
    bucket          = "ci-state-file"
    key             = "docker/docker_host/terraform.tfstate"
    region          = "us-east-1"
    skip_credentials_validation = true
    skip_metadata_api_check     = true
    force_path_style            = true
    skip_requesting_account_id  = true
  }
}
