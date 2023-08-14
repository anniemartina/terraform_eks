# Deploy Infracture using Terraform
Guide for deploying Amazon EKS cluster using Hashicorp Terraform. The terraform will deploy the following resources:

- VPC
- EKS Cluster
- Node Group

## Prerequisites

#### Install tools
- [Tfswitch](https://tfswitch.warrensbox.com/Install/)
  
#### Configure AWS Access
1. Create Access token for IAM User
2. Configure aws with the above created access token, this command will create a `.aws` directory with `credentials` and `config`.
   ```
   aws configure
   AWS Access Key ID [None]: <Access id from step1>
   AWS Secret Access Key [None]: <Access token from step1>
   Default region name [None]: <region-name>
   Default output format [None]:
   ```

## Getting Started
Clone the repository
```
git clone git@github.com:anniemartina/terraform_eks.git
```

## Terraform Infrastructure Configuration 

The following table lists the configuration parameters of the vpc and eks cluster and their default values.

| Parameter | Type | Default | Description |
| --------- | ---- | ------- | ----------- |
| `region` | string | eu-north-1 | Region for AWS |
| `cidr` | string | 10.0.0.0/16 | Cidr Block for VPC |
| `vpc_name` | string | my-trdl-vpc | Name of the VPC |
| `availability_zones` | list(string) | ["eu-north-1a", "eu-north-1b", "eu-north-1c"] | A list of availability zones specified as argument to this module |
| `private_subnets` | list(string) | ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"] | A list of private subnets inside the VPC	 |
| `public_subnets` | list(string) | ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"] | A list of public subnets inside the VPC	 |
| `environment` | string | my-trdl | Terraform Environment |
| `cluster_name` | string | my-trdl-cluster | Name of the EKS cluster	 |
| `cluster_version` | string | 1.27 | Kubernetes <major>.<minor> version to use for the EKS cluster (i.e.: 1.27) |
| `min_size` | string | 1 | Minimum number of nodes in the node group |
| `max_size` | string | 10 | Mazimum number of nodes in the node group |
| `desired_size` | string | 1 | Desired number of nodes in the node group |

### Creating the Infracture

1. Ensure that you are in the directory where `providers.tf` is present:
```
cd terraform_eks
```
2. Install terraform version based on the required version in the providers.tf using tfswitch
```
tfswitch
```
3. Initialize working directory for Terraform
```
terraform init
```
4. View and verify the terraform plan
```
terraform plan
```
You can modify the infracture by providing new values for the configuration parameter defined in the table above and execure the `terraform plan` again to validate the changes.

5. Apply the terraform configurations
```
terraform apply 
```
Sample Output
```
Apply complete! Resources: 62 added, 0 changed, 0 destroyed.
```

6. After completing the testing destroy the infracture.
```
terraform destroy
```

