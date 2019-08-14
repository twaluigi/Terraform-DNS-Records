# Route 53 DNS Records

[![pipeline status](https://gitlab.com/twaluigi/terraform-dns-records/badges/master/pipeline.svg)](https://gitlab.com/twaluigi/terraform-dns-records/commits/master)

Various DNS records for the AWS Infrastructure

Using terragrunt as a wrapper to avoid hardcoding backend config and to keep code DRY

## main.tf
Backend config

## variables.tf

- region - the AWS region to create resources in (this doesn't matter since all resources should be for Route53)
- master_account_number - the account number where these records should be created (in my infrastructure, this is the master account)

## domain files
Defines the hosted zone and records for that particular domain