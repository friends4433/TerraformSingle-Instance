#This Terraform Code Deploys Basic VPC Infra.
provider "aws" {
    access_key = "${var.aws_access_key}"
    secret_key = "${var.aws_secret_key}"
    region = "${var.aws_region}"
}

#Terraform Backend S3
terraform {
  backend "s3" {
    bucket = "gvfxflowlogbuckets3"
    key    = "gvfxflow.tfstate"
    dynamodb_table = "terraform-state-lock-dynamo"
    region = "us-east-1"
  }
}
