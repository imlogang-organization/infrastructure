resource "kubernetes_secret" "grafana-loki" {
  metadata {
    name      = "minio-credentials"
    namespace = "grafana-loki"
  }

  data = {
    "S3_ACCESS_KEY" = var.access_key
    "S3_SECRET_KEY" = var.secret_key
  }

  type = "Opaque"
}