terraform {
  required_version = ">= 0.13.7"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }

    keycloak = {
      source  = "mrparkers/keycloak"
      version = "3.8.1"
    }
  }
}
