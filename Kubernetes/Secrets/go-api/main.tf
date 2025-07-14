resource "kubernetes_secret" "go-api" {
  metadata {
    name      = "go-api-secrets"
    namespace = kubernetes_namespace.go-api.metadata[0].name
  }

  data = {
    USERNAME          = var.username
    PASSWORD          = var.password
    POSTGRES_PASSWORD = var.pg_password
    HC_TOKEN          = var.hc_token
  }

  type = "Opaque"

  depends_on = [
    kubernetes_namespace.go-api,
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