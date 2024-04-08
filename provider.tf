terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
  backend "s3" {
    bucket = "major-states"
    region = "eu-west-2"
    key = "major/dev/terraform.tfstate"
    
  }

}



# configure the AWS provider

provider "aws" {
  region = "eu-west-2"
  default_tags {

    tags = {
      BillingID = "Student"
      Project   = "Dev-personal"
      terraform = true
    }
  }


}