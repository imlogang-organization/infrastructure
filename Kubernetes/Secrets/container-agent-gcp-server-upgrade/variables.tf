variable "circleci_release_agent_system_token" {
  description = "Auth Token of imlogang-organization Container Runner on Cloud to upgrade GCP Server"
  type        = string
}

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