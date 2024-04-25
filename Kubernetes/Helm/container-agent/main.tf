resource "helm_release" "container_agent" {
  name       = var.deployment_name
  namespace  = var.namespace
  chart      = var.chart_name
  version    = var.version

  values = [
    file("${path.module}/values/normal-values.yaml") // This will refer to Kubernetes/Helm/values.yaml
  ]
}
