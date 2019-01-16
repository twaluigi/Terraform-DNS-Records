output "main_delegation_set_id" {
  value = "${aws_route53_delegation_set.main.id}"
}

output "main_name_servers" {
  value = "${aws_route53_delegation_set.main.name_servers}"
}
