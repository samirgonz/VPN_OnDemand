terraform {
  required_version = ">= 0.13.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.46.0"
    }
  }

  backend "remote" {
    organization = "samirgonz"

    workspaces {
      name = "VPN_OnDemand"
    }
  }
}

provider "aws" {
  region     = var.availability_zone_names
  access_key = VPN_ACCESS_KEY
  secret_key = VPN_SECRET_KEY
}