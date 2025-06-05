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

resource "minio_s3_bucket" "cs_config_backup" {
  bucket = "cs2-config-backup"
  acl    = "public" 
}

resource "minio_s3_bucket" "personal_server_backup" {
  bucket = "personal-server-backup"
  acl    = "public"
}

resource "minio_iam_user" "ptero_backup_user" {
   name = "ptero-backup-user"
   force_destroy = true
}

resource "minio_s3_bucket" "support_bundles" {
  bucket = "support-bundles"
  acl    = "public"
}

resource "minio_s3_bucket" "plugins" {
  bucket = "subcommand-plugins"
  acl    = "public"
}

resource "minio_s3_bucket" "loki_chunks" {
  bucket = "loki-chunks"
  acl    = "public"
}
resource "minio_s3_bucket" "loki_ruler" {
  bucket = "loki-ruler"
  acl    = "public"
}
resource "minio_s3_bucket" "loki_admin" {
  bucket = "loki-admin"
  acl    = "public"
}

resource "minio_s3_bucket" "tempo_traces" {
  bucket = "tempo-traces"
  acl    = "public"
}