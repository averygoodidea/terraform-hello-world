terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "~> 3.0"
        }
    }
    backend "s3" {
      bucket = "averygoodwebapp-com-tf"
      key = "terraform.tfstate"
      region = "us-east-1"
      profile = "AverySmithProAdministrator"
    }
}

provider "aws" {
  region                  = var.region
  shared_credentials_file = "~/.aws/credentials"
  profile                 = "AverySmithProAdministrator"
}

resource "aws_s3_bucket" "averygoodbucket_test" {
    bucket = "averygoodbucket-my-hello-world"
    acl = "public-read"

    website {
        index_document = "index.html"
    }
}