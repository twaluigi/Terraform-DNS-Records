resource "aws_route53_zone" "tomwygonik_com" {
  name              = "tomwygonik.com"
  delegation_set_id = "${aws_route53_delegation_set.main.id}"
}

resource "aws_route53_record" "google-verification_tomwygonik_com" {
  name    = "tomwygonik.com"
  zone_id = "${aws_route53_zone.tomwygonik_com.zone_id}"
  type    = "TXT"
  ttl     = "1800"
  records = ["google-site-verification=MQgNKke6cJb8IeXTxusTkRazyNXMfngynAwa9-AtkBU"]
}

resource "aws_route53_record" "google-mx_tomwygonik_com" {
  name    = "tomwygonik.com"
  zone_id = "${aws_route53_zone.tomwygonik_com.zone_id}"
  type    = "MX"
  ttl     = "3600"
  records = ["1 ASPMX.L.GOOGLE.COM", "5 ALT1.ASPMX.L.GOOGLE.COM", "5 ALT2.ASPMX.L.GOOGLE.COM", "10 ASPMX2.GOOGLEMAIL.COM", "10 ASPMX3.GOOGLEMAIL.COM"]
}
