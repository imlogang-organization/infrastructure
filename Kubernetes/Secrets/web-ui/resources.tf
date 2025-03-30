resource "kubernetes_namespace" "web-ui" {
  metadata {
    name = "web-ui"
  }
}