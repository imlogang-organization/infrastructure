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

# variable "chart_version" {
#     description = "Version to Pull from Chart."
#     default = "101.0.21"
# }