# Terraform Settings Block
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    
    }
  }
}

# Provider Block
provider "aws" {
  profile = "default" 
  region  = "us-east-1"
}

# Resource Block
resource "aws_instance" "ec2demo" {
  ami           = "ami-026b57f3c383c2eec" # Amazon Linux in us-east-1, update as per your region
  instance_type = "t2.micro"
}