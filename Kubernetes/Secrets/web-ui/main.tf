resource "kubernetes_secret" "docker_pull" {
  metadata {
    name      = "regcred"
    namespace =  kubernetes_namespace.web-ui.metadata[0].name
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