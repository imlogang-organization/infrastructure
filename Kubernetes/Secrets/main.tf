resource "kubernetes_secret" "production-secrets" {
  metadata {
    name      = "production-secrets"
    namespace = kubernetes_namespace.beemoviebot.metadata[0].name
  }

  data = {
    CLIENT_ID = var.client_id
    BEEMOVIEBOT = var.beemoviebot
    PteroToken = var.pterotoken
  }

  type = "Opaque"

  depends_on = [
    kubernetes_namespace.beemoviebot,
  ]
}

resource "kubernetes_secret" "staging-secrets" {
  metadata {
    name      = "staging-secrets"
    namespace = kubernetes_namespace.beemoviebotstage.metadata[0].name
  }

  data = {
    CLIENT_ID = var.client_id_staging
    BEEMOVIEBOT = var.beemoviebot_staging
    PteroToken = var.pterotoken
  }

  type = "Opaque"

  depends_on = [
    kubernetes_namespace.beemoviebotstage,
  ]
}