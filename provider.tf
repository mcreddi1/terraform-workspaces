terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.66.0"
    }
  }

  backend "s3" {
    bucket = "chinnadev"
    key    = "workspaces"
    region = "us-east-1"
    dynamodb_table = "dynamodev"
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}