terraform {
    required_version = ">= 0.13.0"
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "3.46.0"
    }
  }
}

provider "aws" {
    region = "us-east-1"
  access_key = "AKIAUWK2INR3P56OXW7A"
  secret_key = "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"
}