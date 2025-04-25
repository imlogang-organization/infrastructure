resource "kubernetes_namespace" "grafana-loki" {
  metadata {
    name = "grafana-loki"
  }
}