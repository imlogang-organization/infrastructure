resource "null_resource" "add_helm_repo" {
  provisioner "local-exec" {
    command = "helm repo add kong https://charts.konghq.com && helm repo update"
  }
  triggers = {
    always_run = timestamp()
  }
}

resource "kubernetes_config_map" "kong_configmap" {
  metadata {
    name = "kong"
    namespace = var.namespace
  }

  data = {
    "kong.yml" = file("${path.module}/values/kong.yml")
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
    null_resource.add_helm_repo,
    kubernetes_config_map.kong_configmap
  ]
}

resource "null_resource" "rollout_restart" {
  depends_on = [helm_release.kong]

  provisioner "local-exec" {
    command = "kubectl rollout restart kong/kong -n kong"
  }
}
