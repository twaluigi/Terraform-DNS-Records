resource "aws_route53_zone" "thomaswygonik_com" {
  name              = "thomaswygonik.com"
  delegation_set_id = "${aws_route53_delegation_set.main.id}"
}

# Static Site Records
resource "aws_route53_record" "thomaswygonik_com" {
  name    = "thomaswygonik.com"
  zone_id = "${aws_route53_zone.thomaswygonik_com.zone_id}"
  type    = "A"

  alias {
    name                   = "dyht2pynhlhv6.cloudfront.net"
    zone_id                = "Z2FDTNDATAQYW2"
    evaluate_target_health = false
  }
}

resource "aws_route53_record" "blog_thomaswygonik_com" {
  name    = "blog.thomaswygonik.com"
  zone_id = "${aws_route53_zone.thomaswygonik_com.zone_id}"
  type    = "A"

  alias {
    name                   = "s3-website.us-east-2.amazonaws.com"
    zone_id                = "Z2O1EMRO9K5GLX"
    evaluate_target_health = false
  }
}

resource "aws_route53_record" "www_thomaswygonik_com" {
  name    = "www.thomaswygonik.com"
  zone_id = "${aws_route53_zone.thomaswygonik_com.zone_id}"
  type    = "A"

  alias {
    name                   = "s3-website.us-east-2.amazonaws.com"
    zone_id                = "Z2O1EMRO9K5GLX"
    evaluate_target_health = false
  }
}

resource "aws_route53_record" "google-site-verification_thomaswygonik_com" {
  name    = "thomaswygonik.com"
  zone_id = "${aws_route53_zone.thomaswygonik_com.zone_id}"
  type    = "TXT"
  ttl     = "1800"
  records = ["google-site-verification=9QGCAopX4SIztZBhGn7XlTuH14ruEtAacOWmcPwN47M"]
}

resource "aws_route53_record" "google-mx_thomaswygonik_com" {
  name    = "thomaswygonik.com"
  zone_id = "${aws_route53_zone.thomaswygonik_com.zone_id}"
  type    = "MX"
  ttl     = "3600"
  records = ["1 ASPMX.L.GOOGLE.COM", "5 ALT1.ASPMX.L.GOOGLE.COM", "5 ALT2.ASPMX.L.GOOGLE.COM", "10 ALT3.ASPMX.L.GOOGLE.COM", "10 ALT4.ASPMX.L.GOOGLE.COM"]
}
