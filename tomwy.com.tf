resource "aws_route53_zone" "tomwy_com" {
    name = "tomwy.com"
    delegation_set_id = "${aws_route53_delegation_set.main.id}"
}

