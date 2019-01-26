resource "aws_route53_zone" "tomwy_com" {
  name              = "tomwy.com"
  delegation_set_id = "${aws_route53_delegation_set.main.id}"
}

resource "aws_route53_record" "google-verification_tomwy_com" {
  name    = "tomwy.com"
  zone_id = "${aws_route53_zone.tomwy_com.zone_id}"
  type    = "TXT"
  ttl     = "1800"
  records = ["google-site-verification=XVbE-NIbm2e7vu7gb60o1YnXRgrpBetvLULpF-As_dI"]
}

resource "aws_route53_record" "google-mx_tomwy_com" {
  name    = "tomwy.com"
  zone_id = "${aws_route53_zone.tomwy_com.zone_id}"
  type    = "TXT"
  ttl     = "3600"
  records = ["1 ASPMX.L.GOOGLE.COM", "5 ALT1.ASPMX.L.GOOGLE.COM", "5 ALT2.ASPMX.L.GOOGLE.COM", "10 ASPMX2.GOOGLEMAIL.COM.", "10 ASPMX3.GOOGLEMAIL.COM."]
}

resource "aws_route53_record" "google-mx_home_tomwy_com" {
  name    = "home.tomwy.com"
  zone_id = "${aws_route53_zone.tomwy_com.zone_id}"
  type    = "TXT"
  ttl     = "3600"
  records = ["1 ASPMX.L.GOOGLE.COM", "5 ALT1.ASPMX.L.GOOGLE.COM", "5 ALT2.ASPMX.L.GOOGLE.COM", "10 ASPMX2.GOOGLEMAIL.COM.", "10 ASPMX3.GOOGLEMAIL.COM."]
}
