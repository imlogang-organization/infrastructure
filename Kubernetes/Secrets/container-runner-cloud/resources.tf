resource "kubernetes_namespace" "circleci" {
  metadata {
    name = "circleci"
  }
}