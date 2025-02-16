variable "namespace" {
    description = "Namespace of Container Agent for Cloud"
    default = "circleci-release-agent-system"
    type = string
}

variable "deployment_name" {
    description = "Deployment name."
    default = "circleci-release-agent-system"
    type = string
}

variable "chart_name" {
    description = "Chart Name."
    default = "release-agent/circleci-release-agent"
    type = string
}