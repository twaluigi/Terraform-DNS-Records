provider "aws" {
  region  = "${var.aws_region}"
  version = "~>2.0"

  #profile = "${var.aws_profile}"
}

resource "aws_route53_delegation_set" "main" {}
