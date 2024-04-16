resource "kubernetes_namespace" "circleci-release-agent-system" {
  metadata {
    name = "circleci-release-agent-system"
  }
}