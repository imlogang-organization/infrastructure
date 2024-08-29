[![CircleCI](https://cciserver.logangodsey.com/status-badge/img/gh/imlogang-organization/logan-infrastructure/tree/main.svg?style=svg&circle-token=3f6a7820b1cbd15a302fb8a9cc3e34de56b630d3)](https://cciserver.logangodsey.com/status-badge/redirect/gh/imlogang-organization/logan-infrastructure/tree/main)
# Logan Infrastructure 
This is the terraform repository that controls Logan's Infrastructure to a point. 

Most notably, this handles the secrets in all Kubernetes Namespaces execpt `circleci-server`. 

This will also handle the creation of new buckets in my locally hosted MiniO, my single EC2 instance in AWS and my bare metal Docker host. 

All secrets are stored in Contexts inside of my self-hosted CircleCI Server and are referenced in each workflow as needed. 
Please note that `kubeconfig` is needed for each workflow as that is an easy way to make sure that Machine Runner most jobs run on has access to the underlying Kubernetes infrastructure. 

# Prerequisites for usage
* Terraform either installed on MacOS (`brew install terraform`) or [Windows](https://developer.hashicorp.com/terraform/install#windows).
* Access to the [CircleCI Server](https://app.cciserver.logangodsey.com/pipelines/github/imlogang-organization/logan-infrastructure) it runs on.

# Partitions 
* `AWS`: This is the Terraform for AWS.
* `cloudflare`: Handles both domains and their records.
* `docker`: This is the Terraform for Docker Containers on the Host.
* `Kubernetes/Secrets`: This is the Terraform for my Kubernetes Host and the secrets in it. Folder structure is a `namespace` is a folder.
* `Kuberentes/Helm`: This is the Terraform for any deployments that are done via Helm. Folder structure is a `namespace` is a folder.
* `minio`: This is the Terraform for MiniO.