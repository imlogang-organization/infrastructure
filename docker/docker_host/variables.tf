variable "restart" {
  default = "unless-stopped"
  description = "Restart cadance of Docker Container."
}

variable "home_directory" {
  type    = string
  default = "/home/logan"  # Adjust this to your actual home directory
}

variable "privileged" {
  type = bool
  default = true
}

variable "docker_influxdb_init_password" {
  type        = string
  description = "The initial password for InfluxDB"
  default     = ""
}

variable "minio_url" {
  description = "The MinIO endpoint URL"
  type        = string
}

variable "bucket_name" {
  description = "The name of the MinIO bucket"
  type        = string
}

variable "region" {
  description = "The region for MinIO"
  type        = string
}

variable "minio_access_key" {
  description = "The MinIO access key"
  type        = string
}

variable "minio_secret_key" {
  description = "The MinIO secret key"
  type        = string
}