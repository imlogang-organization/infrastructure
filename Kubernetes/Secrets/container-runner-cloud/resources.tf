resource "kubernetes_namespace" "circleci" {
  metadata {
    name = "circleci"
  }
  
  lifecycle {
    ignore_changes = all
  }
}