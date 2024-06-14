resource "null_resource" "add_helm_repo" {
  provisioner "local-exec" {
    command = "helm repo add container-agent https://packagecloud.io/circleci/container-agent/helm"
  }
  triggers = {
    always_run = "${timestamp()}"
  }
}

resource "helm_release" "container_agent" {
  name       = var.deployment_name
  namespace  = var.namespace
  chart      = var.chart_name
  # version    = var.chart_version

  values = [
    file("${path.module}/values/normal-values.yaml") // This will refer to Kubernetes/Helm/values.yaml
  ]

  depends_on = [
    null_resource.add_helm_repo
  ]
}