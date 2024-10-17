variable "namespace" {
    description = "Namespace of Container Agent for Server"
    default = "container-runner-server"
    type = string
}

variable "deployment_name" {
    description = "Deployment name."
    default = "container-runner-server"
    type = string
}

variable "chart_name" {
    description = "Chart Name."
    default = "container-agent/container-agent"
    type = string
}