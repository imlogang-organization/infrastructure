resource "kubernetes_namespace" "circleci" {
  metadata {
    name = "cr-upgrade"
  }
}