terraform {
  required_version = ">= 1.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  region = var.region
}

module "vpc" {
  source            = "../../../../modules/vpc"
  cidr_block        = var.cidr_block
  public_subnets    = var.public_subnets
  availability_zones = var.availability_zones
  environment       = var.environment
}
