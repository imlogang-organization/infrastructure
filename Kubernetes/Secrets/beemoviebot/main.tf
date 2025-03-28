resource "kubernetes_secret" "production-secrets" {
  metadata {
    name      = "production-secrets"
    namespace = kubernetes_namespace.beemoviebot.metadata[0].name
  }

  data = {
    CLIENT_ID = var.client_id
    BEEMOVIEBOT = var.beemoviebot
    PteroToken = var.pterotoken
    CIRCLE_TOKEN =  var.circle_token
  }

  type = "Opaque"

  depends_on = [
    kubernetes_namespace.beemoviebot,
  ]
}

resource "kubernetes_secret" "docker_pull" {
  metadata {
    name      = "regcred"
    namespace = kubernetes_namespace.beemoviebot.metadata[0].name
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
