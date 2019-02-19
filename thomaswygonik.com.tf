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
