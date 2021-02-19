terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

provider "aws" {
  profile                 = "default"
  region                  = "us-east-2"
  shared_credentials_file = "~/.aws/credentials"
}

// AWS Resources
resource "aws_s3_bucket" "ssrful-ps" {
  bucket = "ssrful-terraform"
  acl    = "private"
}

