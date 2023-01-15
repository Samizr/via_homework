terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.48"
    }
  }

  required_version = "~> v1.3"

}

provider "aws" {
  region = "eu-central-1"
}