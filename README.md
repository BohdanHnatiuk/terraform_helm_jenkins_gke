

<!-- ABOUT THE PROJECT -->
## About The Project
<b>The main goals of this project are:</b>
1) creation of infrastructure on Google Cloud using Terraform;
2) creation of a simple CI/CD pipeline, which handle build and deploy of simple Spring Boot application using Jenkins, Ansible and GKE

**CI/CD pipeline, which handle build and deploy of Spring Boot application **



### Technology Stack
* []()Terraform
* []()GCP
* []()GKE
* []()Jenkins
* []()Ansible




### HELM REPO:
https://bohdanhnatiuk.github.io/charts/


### Prerequisites
* Google Cloud Provider (GCP) account
* Terraform
* HELM repo

#### Authentication
In order for Terraform to securely interact with GCP, create a service account.

### Service account
The preferred method of provisioning resources with Terraform is the usage of a GCP service account (robot account), to which a limited set of IAM permissions can be granted.
Under the APIs & Services section in the main menu, click on Credentials. Select Service account key from the Create credentials dropdown menu and fill in the required details. Finally, click create to download the resulting JSON file.

### SSH
Need to grant Ansible access to the VM by adding a public SSH key to the Terraform metadata.
Generate a pair of keys by running the following command:
   ```sh
ssh-keygen -t rsa -b 2048
   ```
and copy it to petclinic server after create them.

### Orchestration
From the terraform directory run the following command:
   ```sh
terraform init
   ```
For  testing use the terraform plan command that will allow you  getting a list of resources that Terraform will create or modify. If everything looks good, apply the changes:
   ```sh
terraform apply
   ```
