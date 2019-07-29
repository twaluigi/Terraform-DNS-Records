resource "aws_route53_zone" "tomwy_com" {
  name = "tomwy.com"
}

# home.tomwy.com subdomain delegation
resource "aws_route53_record" "home_tomwy_com_delegation" {
  zone_id = "${aws_route53_zone.tomwy_com.zone_id}"
  name    = "home.tomwy.com"
  type    = "NS"
  ttl     = "172800"
  records = [
    "${aws_route53_zone.home_tomwy_com.name_servers.0}",
    "${aws_route53_zone.home_tomwy_com.name_servers.1}",
    "${aws_route53_zone.home_tomwy_com.name_servers.2}",
    "${aws_route53_zone.home_tomwy_com.name_servers.3}",
  ]
}

# SPF Record for Mailgun


resource "aws_route53_record" "gsuite_tomwy_com_validation" {
  zone_id = "${aws_route53_zone.tomwy_com.zone_id}"
  name    = "tomwy.com"
  type    = "TXT"
  ttl     = "3600"
  records = ["google-site-verification=7ATRTXx38Syrkuvf7u63R08fCtilm7KoA_e931Jz7L0"]
}

resource "aws_route53_record" "gsuite_tomwy_com_MX" {
  zone_id = "${aws_route53_zone.tomwy_com.zone_id}"
  name    = "tomwy.com"
  type    = "MX"
  ttl     = "3600"

  records = ["1 ASPMX.L.GOOGLE.COM",
    "5 ALT1.ASPMX.L.GOOGLE.COM",
    "5 ALT2.ASPMX.L.GOOGLE.COM",
    "10 ALT3.ASPMX.L.GOOGLE.COM",
    "10 ALT4.ASPMX.L.GOOGLE.COM",
  ]
}