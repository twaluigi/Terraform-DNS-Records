resource "aws_route53_zone" "thomaswygonik_com" {
  name              = "thomaswygonik.com"
  delegation_set_id = "${aws_route53_delegation_set.main.id}"
}
