resource "kubernetes_namespace" "beemoviebot" {
  metadata {
    name = "beemoviebot"
  }
}

resource "kubernetes_namespace" "beemoviebotstage" {
  metadata {
    name = "beemoviebotstage"
  }
}