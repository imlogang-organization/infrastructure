resource "null_resource" "add_helm_repo" {
  provisioner "local-exec" {
    command = "helm repo add kong https://charts.konghq.com && helm repo update"
  }
  triggers = {
    always_run = timestamp()
  }
}

resource "helm_release" "kong" {
  name       = var.deployment_name
  namespace  = var.namespace
  chart      = var.chart_name

  values = [
    file("${path.module}/values/normal-values.yaml")
  ]

  depends_on = [
    null_resource.add_helm_repo
  ]
}