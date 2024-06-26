data "google_container_cluster" "circleci-server" {
  name     = var.cluster_name
  location = var.region
  project  = var.project
}

resource "kubernetes_secret" "container-runner-gcp-upgrade" {
  metadata {
    name      = "imlogang-organization.gcp-server-runner"
    namespace = kubernetes_namespace.cr-upgrade.metadata[0].name
  }

  data = {
    "imlogang-organization.gcp-server-runner" = var.imlogang-organization-gcp-server-runner
  }

  type = "Opaque"

  depends_on = [
    kubernetes_namespace.cr-upgrade,
  ]
}