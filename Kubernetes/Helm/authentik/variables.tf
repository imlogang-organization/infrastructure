variable "namespace" {
    description = "Namespace of Container Agent for Cloud"
    default = "authentik"
    type = string
}

variable "deployment_name" {
    description = "Deployment name."
    default = "authentik"
    type = string
}

variable "chart_name" {
    description = "Chart Name."
    default = "authentik/authentik"
    type = string
}