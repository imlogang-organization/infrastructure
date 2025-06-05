resource "kubernetes_namespace" "circleci" {
  metadata {
    name = "grafana-tempo"
  }
}