 module "aws_eks_cluster" {
  source = "./module"
 }

 provider "aws" {
  region = "us-west-2"
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

terraform {
  backend "s3" {
    bucket         = "sanyo123bucketss"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true  
    dynamodb_table = "sanyo123tables"  
  }
}
