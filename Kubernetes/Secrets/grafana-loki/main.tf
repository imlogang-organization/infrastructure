resource "kubernetes_secret" "grafana-loki" {
  metadata {
    name      = "minio-credentials"
    namespace = kubernetes_namespace.grafana-loki.metadata[0].name
  }

  data = {
    "S3_ACCESS_KEY" = var.access_key
    "S3_SECRET_KEY" = var.secret_key
  }

  type = "Opaque"

  depends_on = [
    kubernetes_namespace.grafana-loki,
  ]
}