terraform {
  required_version = ">= 1.6.3"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.24.0"
    }
  }
}

provider "aws" {
  region     = var.region
  secret_key = var.secret_key 
  access_key = var.access_key
}
