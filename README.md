# Deploy Infracture using Terraform
Guide for deploying Amazon EKS cluster using Hashicorp Terraform. The terraform will deploy the following resources:

- VPC
- EKS Cluster
- Node Group

## Prerequisites

#### Install tools
- [Tfswitch]([https://v3.helm.sh/](https://tfswitch.warrensbox.com/Install/))
- [Kubectl](https://docs.aws.amazon.com/eks/latest/userguide/install-kubectl.html)

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
