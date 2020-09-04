# Master account for Route 53 records and state store
provider "aws" {
  version             = "~>2.0"
  region              = var.region
  allowed_account_ids = var.master_account_number
}

terraform {
  backend "s3" {}
  required_version = ">=0.12.0"
}