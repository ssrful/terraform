terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

provider "aws" {
  profile                 = "default"
  region                  = "us-east-1"
  shared_credentials_file = "C:\Users\17813\.aws\credentials"
}

// AWS Resources
resource "aws_s3_bucket" "per_scholas_test" {
  bucket = "ps_test"
  acl    = "private"
}

