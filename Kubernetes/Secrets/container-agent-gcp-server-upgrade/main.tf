data "google_container_cluster" "circleci-server" {
  name     = var.cluster_name
  location = var.region
  project  = var.project
}

resource "kubernetes_secret" "container-runner-gcp-upgrade" {
  metadata {
    name      = "imlogang-organization.gcp-container-runner"
    namespace = kubernetes_namespace.container-runner-gcp-upgrade.metadata[0].name
  }

  data = {
    token = var.circleci_release_agent_system_token
  }

  type = "Opaque"

  depends_on = [
    kubernetes_namespace.container-runner-gcp-upgrade,
  ]
}