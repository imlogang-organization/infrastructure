variable "namespace" {
    description = "Namespace of Container Agent for Cloud Server"
    default = "cr-upgrade"
}

variable "deployment_name" {
    description = "Deployment name."
    default = "container-agent"
}

variable "chart_name" {
    description = "Chart Name."
    default = "container-agent/container-agent"
}

# variable "chart_version" {
#     description = "Version to Pull from Chart."
#     default = "101.0.21"
# }

variable "project" {
  description = "Project ID"
  default = "server-sandbox-348020"
}

variable "region" {
  description = "Region"
  default =  "us-central1"
}

variable "cluster_name" {
  description = "Name of the cluster."
  default = "circleci-server"
}