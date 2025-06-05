variable "namespace" {
    description = "Namespace of the deployment"
    default = "grafana-loki"
    type = string
}

variable "deployment_name" {
    description = "Deployment name."
    default = "grafana-loki"
    type = string
}

variable "chart_name" {
    description = "Chart Name."
    default = "grafana/loki"
    type = string
}