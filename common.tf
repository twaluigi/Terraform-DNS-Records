provider "aws" {
  region  = "${var.aws_region}"
  #profile = "${var.aws_profile}"
}

resource "aws_route53_delegation_set" "main" {}
