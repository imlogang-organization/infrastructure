resource "kubernetes_secret" "container-runner-secrets" {
  metadata {
    name      = "logan.container-runner"
    namespace = kubernetes_namespace.circleci.metadata[0].name
  }

  data = {
    imlogang-organization.container-runner = var.imlogang-organization-container-runner
    logan.container-runner = var.logan-container-runner
  }

  type = "Opaque"

  depends_on = [
    kubernetes_namespace.circleci,
  ]
}
