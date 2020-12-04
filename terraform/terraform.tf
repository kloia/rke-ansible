terraform {
    required_version = ">= 0.13, < 0.14"

    required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 2.7.0"
    }
  }
}

provider "aws" {
    region = "eu-west-1"
}
