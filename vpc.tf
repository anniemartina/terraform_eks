module "vpc" {
  source = "terraform-aws-modules/vpc/aws"
  version = "5.1.1"
  name = var.vpc_name
  cidr = var.cidr

  azs             = var.availability_zones
  private_subnets = var.private_subnets
  public_subnets  = var.public_subnets

  enable_nat_gateway = true
  enable_vpn_gateway = true

  enable_dns_hostnames = true
  enable_dns_support   = true

  tags = {
    Terraform = "true"
    Environment = var.environment
  }
}
