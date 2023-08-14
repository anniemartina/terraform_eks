variable "aws_version" {
  type    = string
  default = "5.12.0"
}

variable "region" {
  type    = string
  default = "eu-north-1"
}

variable "cidr" {
  type    = string
  default = "10.0.0.0/16"
}

variable "vpc_name" {
  type    = string
  default = "my-trdl-vpc"
}

variable "availability_zones" {
  type    = list(string)
  default = ["eu-north-1a", "eu-north-1b", "eu-north-1c"]
}

variable "private_subnets" {
  type    = list(string)
  default = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
}

variable "public_subnets" {
  type    = list(string)
  default = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]
}

variable "environment" {
  type    = string
  default = "my-trdl"
}

variable "cluster_name" {
  type    = string
  default = "my-trdl-cluster"
}

variable "cluster_version" {
  type    = string
  default = "1.27"
}

variable "min_size" {
  type    = string
  default = "1"
}

variable "max_size" {
  type    = string
  default = "10"
}

variable "desired_size" {
  type    = string
  default = "1"
}
