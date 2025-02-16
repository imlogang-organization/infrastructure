resource "kubernetes_secret" "circleci-release-agent-system" {
  metadata {
    name      = "circleci-release-agent-system"
    namespace = kubernetes_namespace.circleci-release-agent-system.metadata[0].name
  }

  data = {
    token = var.circleci_release_agent_system_token
  }

  type = "Opaque"

  depends_on = [
    kubernetes_namespace.circleci-release-agent-system,
  ]
}
