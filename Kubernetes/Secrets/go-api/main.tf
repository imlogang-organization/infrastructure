resource "kubernetes_secret" "go-api" {
  metadata {
    name      = "go-api-secrets"
    namespace = kubernetes_namespace.go-api.metadata[0].name
  }

  data = {
    USERNAME          = var.username
    PASSWORD          = var.password
    POSTGRES_PASSWORD = var.pg_password
  }

  type = "Opaque"

  depends_on = [
    kubernetes_namespace.go-api,
  ]
}