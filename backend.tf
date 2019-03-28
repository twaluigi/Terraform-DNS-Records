terraform {
  backend "s3" {
    bucket         = "tomwygonik-tfstate"
    key            = "terraform/dns/terraform_dns_project.tfstate"
    region         = "us-east-2"
    dynamodb_table = "tomwygonik-tfstate-lock"
    encrypt        = true
  }
}
