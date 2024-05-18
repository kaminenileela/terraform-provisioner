terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "5.48.0"
        }
    }
    backend "s3" {
        bucket = ""
        key = ""
        region = ""
        dynamodb_table = ""
    }
}

provider "aws" {
    region = "us-east-1"
}