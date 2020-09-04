variable "region" {
    default = "us-east-1"
}

variable "master_account_numbers" {
    type = set(string)
}