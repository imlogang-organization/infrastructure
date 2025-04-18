resource "null_resource" "add_helm_repo" {
  provisioner "local-exec" {
    command = "helm repo add authentik https://charts.goauthentik.io"
  }
  triggers = {
    always_run = timestamp()
  }
}

resource "helm_release" "circleci-release-agent-system" {
  name       = var.deployment_name
  namespace  = var.namespace
  chart      = var.chart_name

  values = [
    file("${path.module}/values/values.yaml") 
  ]

  depends_on = [
    null_resource.add_helm_repo
  ]
}