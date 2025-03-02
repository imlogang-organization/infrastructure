resource "kubernetes_namespace" "container-runner-server" {
  metadata {
    name = "kong"
  }
}