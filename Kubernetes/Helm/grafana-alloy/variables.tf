variable "namespace" {
    description = "Namespace of the deployment"
    default = "grafana-alloy"
    type = string
}

variable "deployment_name" {
    description = "Deployment name."
    default = "grafana-alloy"
    type = string
}

variable "chart_name" {
    description = "Chart Name."
    default = "grafana/alloy"
    type = string
}
