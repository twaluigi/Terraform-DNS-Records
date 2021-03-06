# Master account for Route 53 records and state store
provider "aws" {
  version             = "~>3.5.0"
  region              = var.region
}

terraform {
  backend "s3" {}
  required_version = ">=0.12.0"
}