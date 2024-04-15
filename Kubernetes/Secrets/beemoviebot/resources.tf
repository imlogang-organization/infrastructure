resource "kubernetes_namespace" "beemoviebot" {
  metadata {
    name = "beemoviebot"
  }
}