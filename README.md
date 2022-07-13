# terraform-101
This repository has the code to create a VPC and a VM in GCP.

## Prerequisites
* Setup a GCP account
* Install Terraform

## Installing
Just run the following commands

* Clone the project
```
git clone https://github.com/carloslmew/terraform-101.git
```
* Change to the directory
```
cd terraform-101
```
* Change the service account path for yours in the `main.tf` file, in the line 12.
```
credentials = file("YOUR-SERVICE-ACCOUNT-PATH.json")
```
* Init Terraform
```
terraform init
```
* Check the plan of resources creation
```
terraform plan
```
* Validate the configuration file
```
terraform validate
```
* Apply the configuration and create the resources
```
terraform apply
```
* Verify your resources in GCP
* Destroy the resources
```
terraform destroy
```

## Acknowledgments
This solution was based on this guide: [Get Started - Google Cloud](https://learn.hashicorp.com/collections/terraform/gcp-get-started) guide, containing Terraform configuration files to create resources on GCP.

Follow the step-by-step here: [GCP: Terraform Setup on the Cloud](https://protective-opossum-8c5.notion.site/GCP-Terraform-Setup-on-the-Cloud-d67714ee9c8b493586764ca6de002ee4)
