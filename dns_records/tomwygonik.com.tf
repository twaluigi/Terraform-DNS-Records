resource "aws_route53_zone" "tomwygonik_com" {
  name              = "tomwygonik.com"
}

resource "aws_route53_record" "gsuite_tomwygonik_com_validation" {
  zone_id = "${aws_route53_zone.tomwygonik_com.zone_id}"
  name    = "tomwygonik.com"
  type    = "TXT"
  ttl     = "3600"
  records = ["google-site-verification=D-8mVtmtC1RZKUTJ1_f-rSOlYRMFBuVxhqP1xErWgN4"]
}

resource "aws_route53_record" "gsuite_tomwygonik_com_MX" {
  zone_id = "${aws_route53_zone.tomwygonik_com.zone_id}"
  name    = "tomwygonik.com"
  type    = "MX"
  ttl     = "3600"

  records = ["1 ASPMX.L.GOOGLE.COM",
    "5 ALT1.ASPMX.L.GOOGLE.COM",
    "5 ALT2.ASPMX.L.GOOGLE.COM",
    "10 ALT3.ASPMX.L.GOOGLE.COM",
    "10 ALT4.ASPMX.L.GOOGLE.COM",
  ]
}
