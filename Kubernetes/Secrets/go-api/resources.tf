resource "kubernetes_namespace" "go-api" {
  metadata {
    name = "go-api"
  }
}