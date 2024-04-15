resource "kubernetes_secret" "container-runner-secrets" {
  metadata {
    name      = "logan.container-runner"
    namespace = kubernetes_namespace.circleci.metadata[0].name
  }

  data = {
    "imlogang-organization.container-runner" = var.imlogang_organization_container_runner
    "logan.container-runner" = var.logan_container_runner
  }

  type = "Opaque"

  depends_on = [
    kubernetes_namespace.circleci,
  ]
}
