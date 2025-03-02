variable "namespace" {
    description = "Namespace of Container Agent for Server"
    default = "kong"
    type = string
}

variable "deployment_name" {
    description = "Deployment name."
    default = "kong"
    type = string
}

variable "chart_name" {
    description = "Chart Name."
    default = "kong"
    type = string
}