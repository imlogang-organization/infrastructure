resource "null_resource" "add_helm_repo" {
  provisioner "local-exec" {
    command = "helm repo add grafana https://grafana.github.io/helm-charts"
  }
  triggers = {
    always_run = timestamp()
  }
}

resource "helm_release" "grafana-loki" {
  name       = var.deployment_name
  namespace  = var.namespace
  chart      = var.chart_name

  values = [
    file("${path.module}/values/normal-values.yaml") // This will refer to Kubernetes/Helm/values.yaml
  ]

  depends_on = [
    null_resource.add_helm_repo
  ]
}