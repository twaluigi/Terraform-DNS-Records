terraform {
  backend "s3" {
    bucket = "tomwygonik-tfstate"
    key    = "terraform/dns/terraform_dns_project.tfstate"
    region = "us-east-2"
  }
}
