resource "kubernetes_secret" "staging-secrets" {
  metadata {
    name      = "staging-secrets"
    namespace = kubernetes_namespace.beemoviebotstage.metadata[0].name
  }

  data = {
    CLIENT_ID = var.client_id
    BEEMOVIEBOT = var.beemoviebot
    PteroToken = var.pterotoken
    CIRCLE_TOKEN =  var.circle_token
  }

  type = "Opaque"

  depends_on = [
    kubernetes_namespace.beemoviebotstage,
  ]
}
