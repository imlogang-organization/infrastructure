resource "null_resource" "add_helm_repo" {
  provisioner "local-exec" {
    command = "helm repo add container-agent https://packagecloud.io/circleci/container-agent/helm && helm repo update"
  }
  triggers = {
    always_run = timestamp()
  }
}

resource "helm_release" "container_agent_server" {
  name       = var.deployment_name
  namespace  = var.namespace
  chart      = var.chart_name
  version    = "v101.1.3"

  values = [
    file("${path.module}/values/normal-values.yaml") // This will refer to Kubernetes/Helm/values.yaml
  ]

  depends_on = [
    null_resource.add_helm_repo
  ]
}
