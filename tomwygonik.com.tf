resource "aws_route53_zone" "tomwygonik_com" {
  name              = "tomwygonik.com"
  delegation_set_id = "${aws_route53_delegation_set.main.id}"
}
