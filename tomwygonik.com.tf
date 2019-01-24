resource "aws_route53_zone" "tomwygonik_com" {
  name              = "tomwygonik.com"
  delegation_set_id = "${aws_route53_delegation_set.main.id}"
}

resource "aws_route53_record" "A_test_tomwygonik_com" {
  name = "test.tomwygonik.com"
  zone_id = "${aws_route53_zone.tomwygonik_com.zone_id}"
  type = "A"
  ttl = "300"
  records = ["13.58.11.80"]
  }

resource "aws_route53_record" "AAAA_test_tomwygonik_com" {
  name = "test.tomwygonik.com"
  zone_id = "${aws_route53_zone.tomwygonik_com.zone_id}"
  type = "AAAA"
  ttl = "300"
  records = ["2600:1f16:c60:7310:7012:a81a:228e:5d83"]
}