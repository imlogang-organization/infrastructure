resource "kubernetes_namespace" "circleci" {
  metadata {
    name = "circleci-release-agent-system"
  }
}