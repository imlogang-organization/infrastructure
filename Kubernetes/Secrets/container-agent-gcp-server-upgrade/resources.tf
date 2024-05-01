resource "kubernetes_namespace" "container-runner-gcp-upgrade" {
  metadata {
    name = "cr-upgrade"
  }
}