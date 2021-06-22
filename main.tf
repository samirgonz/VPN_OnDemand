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
  access_key = var.vpn_access_key
  secret_key = var.vpn_secret_key
}