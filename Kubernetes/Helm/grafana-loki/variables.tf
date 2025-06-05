variable "namespace" {
    description = "Namespace of the deployment"
    default = "grafana-tempo"
    type = string
}

variable "deployment_name" {
    description = "Deployment name."
    default = "grafana-tempo"
    type = string
}

variable "chart_name" {
    description = "Chart Name."
    default = "grafana/tempo"
    type = string
}