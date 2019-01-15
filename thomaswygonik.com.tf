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

# SES Records

resource "aws_route53_record" "_amazonses_thomaswygonik_com" {
  name    = "_amazonses.thomaswygonik.com"
  zone_id = "${aws_route53_zone.thomaswygonik_com.zone_id}"
  type    = "TXT"
  ttl     = "1800"
  records = ["MwBWXuhiHEV4f+DcyDYUEXYpD5HyxKjnroPtjvi4UnM="]
}

resource "aws_route53_record" "_398c53b44a71cfb214dc5e02b196561b_thomaswygonik_com" {
  name    = "_398c53b44a71cfb214dc5e02b196561b.thomaswygonik.com"
  zone_id = "${aws_route53_zone.thomaswygonik_com.zone_id}"
  type    = "CNAME"
  ttl     = "300"
  records = ["_a277993a078619eee53584817a81528a.tljzshvwok.acm-validations.aws."]
}

resource "aws_route53_record" "3vyhs3agxaiqpvgwki42kzr5gjbpkhnl_domainkey_thomaswygonik_com" {
  name    = "3vyhs3agxaiqpvgwki42kzr5gjbpkhnl._domainkey.thomaswygonik.com"
  zone_id = "${aws_route53_zone.thomaswygonik_com.zone_id}"
  type    = "CNAME"
  ttl     = "1800"
  records = ["3vyhs3agxaiqpvgwki42kzr5gjbpkhnl.dkim.amazonses.com"]
}

resource "aws_route53_record" "e5o5by5kho7ncoy2vgg3zrrr5ytqumne_domainkey_thomaswygonik_com" {
  name    = "e5o5by5kho7ncoy2vgg3zrrr5ytqumne._domainkey.thomaswygonik.com"
  zone_id = "${aws_route53_zone.thomaswygonik_com.zone_id}"
  type    = "CNAME"
  ttl     = "1800"
  records = ["e5o5by5kho7ncoy2vgg3zrrr5ytqumne.dkim.amazonses.com"]
}

resource "aws_route53_record" "ztacxsbparfqooc4mxo2rrpcqvnyp2g3_domainkey_thomaswygonik_com" {
  name    = "ztacxsbparfqooc4mxo2rrpcqvnyp2g3._domainkey.thomaswygonik.com"
  zone_id = "${aws_route53_zone.thomaswygonik_com.zone_id}"
  type    = "CNAME"
  ttl     = "1800"
  records = ["ztacxsbparfqooc4mxo2rrpcqvnyp2g3.dkim.amazonses.com"]
}
