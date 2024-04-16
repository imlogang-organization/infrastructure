resource "kubernetes_secret" "circleci-release-agent-system" {
  metadata {
    name      = "token"
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