resource "minio_s3_bucket" "state_terraform_s3" {
  bucket = "ci-state-file"
  acl    = "public"
}

resource "minio_s3_bucket" "g_drive_backup" {
  bucket = "g-drive-backup"
  acl    = "public" 
}

resource "minio_s3_bucket" "ptero_oats_backup" {
  bucket = "ptero-oats-backup"
  acl    = "public" 
}

resource "minio_user" "ptero_oats_user" {
  access_key = "ptero_oats_user"
  secret_key = "u97LxZ%SiXCpBuBUp&J"
}