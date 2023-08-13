terraform {
  required_version = ">= 1.5.5"
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.12.0"
    }
    kubectl = {
      source = "gavinbunney/kubectl"
      version = ">= 1.14.0"
    }
    helm = {
      source = "hashicorp/helm"
      version = ">= 2.10.1"
    }
  }
}

provider "aws" {
  region = "eu-north-1"
}
