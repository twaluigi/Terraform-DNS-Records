# Route 53 DNS Records

Various DNS records for the tomwygonik org AWS infrastructure

## backend.tf
Configuration for storing terraform state in an S3 bucket

## common.tf
attributes shared by all zones
- provider
- route53 delegation set
- 
## outputs.tf
Values output from terraform apply

## variables.tf
Variables necessary to run terraform

## thomaswygonik.com.tf, tomwy.com.tf, tomwygonik.com.tf
DNS records for individual hosted zones
