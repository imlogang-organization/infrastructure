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

resource "minio_iam_user" "ptero_backup_user" {
   name = "ptero-backup-user"
   force_destroy = true
}

output "test" {
  value = "${minio_iam_user.test.id}"
}

output "status" {
  value = "${minio_iam_user.test.status}"
}

output "secret" {
  value = "${minio_iam_user.test.secret}"
}