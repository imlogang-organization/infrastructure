resource "kubernetes_secret" "container-runner-server" {
  metadata {
    name      = "logan.container-runner-server"
    namespace = kubernetes_namespace.container-runner-server.metadata[0].name
  }

  data = {
    "imlogang-organization-server.container-runner-server" = var.imlogang_organization_container_runner_server
  }

  type = "Opaque"

  depends_on = [
    kubernetes_namespace.container-runner-server,
  ]
}