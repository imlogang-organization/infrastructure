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

resource "kubernetes_secret" "docker_pull" {
  metadata {
    name      = "regcred"
    namespace =  kubernetes_namespace.go-api.metadata[0].name
  }

  type = "kubernetes.io/dockerconfigjson"

  data = {
    ".dockerconfigjson" = jsonencode({
      auths = {
        "https://index.docker.io/v1/" = {
          username = var.docker-username
          password = var.docker-password
          email    = var.docker-email
          auth     = base64encode("${var.docker-username}:${var.docker-password}")
        }
      }
    })
  }
}
