resource "kubernetes_namespace" "beemoviebotstage" {
  metadata {
    name = "beemoviebotstage"
  }
}