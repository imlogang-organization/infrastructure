variable "namespace" {
    description = "Namespace of Container Agent for Cloud"
    default = "circleci"
}

variable "deployment_name" {
    description = "Deployment name."
    default = "container-agent"
}

variable "chart_name" {
    description = "Chart Name."
    default = "container-agent/container-agent"
}

variable "version" {
    description = "Version to Pull from Chart."
    default = "101.0.21"
}