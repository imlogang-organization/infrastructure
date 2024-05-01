resource "kubernetes_namespace" "cr-upgrade" {
  metadata {
    name = "cr-upgrade"
  }
}