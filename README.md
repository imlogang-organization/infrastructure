[![CircleCI](https://cciserver.logangodsey.com/status-badge/img/gh/imlogang-organization/logan-infrastructure/tree/main.svg?style=svg&circle-token=3f6a7820b1cbd15a302fb8a9cc3e34de56b630d3)](https://cciserver.logangodsey.com/status-badge/redirect/gh/imlogang-organization/logan-infrastructure/tree/main)
# Logan Infrastructure 
This is the terraform repository that controls Logan's Infrastructure to a point. 

Most notabley, this handles the secrets in all Kubernetes Namespaces execpt `circleci-server`. 

This will also handle the creation of new buckets in my locally hosted MiniO, my single EC2 instance in AWS and eventually, my Docker host internally. 

All secrets are stored in Contexts inside of my self-hosted CircleCI Server and are referenced in each workflow as needed. 
Please note that `kubeconfig` is needed for each workflow as that is an easy way to make sure that Machine Runner most jobs run on has access to the underlying Kubernetes infrastructure. 

--- 

# Prerequisites for usage
* Terraform either installed on MacOS (`brew install terraform`) or Windows.
* Access to the CircleCI Server it runs on.

# Partitions 
* `AWS` This is the Terraform for AWS.
* `docker` This is the Terraform for Docker Containers on the Host.
* `Kubernetes` This is the Terraform for my Kubernetes Host.
* `minio` This is the Terraform for MiniO.
