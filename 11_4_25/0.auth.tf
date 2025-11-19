# Terraform configuration block
# This defines the minimum Terraform version and required providers

terraform {
  required_version = ">= 1.0"
  
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  
  }
}

provider "aws" {
  # Configuration options
   region = "eu-north-1"
}
