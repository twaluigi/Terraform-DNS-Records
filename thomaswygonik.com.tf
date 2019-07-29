resource "aws_route53_zone" "thomaswygonik_com" {
  name = "thomaswygonik.com"
}

resource "aws_route53_record" "gsuite_thomaswygonik_com_validation" {
  zone_id = "${aws_route53_zone.thomaswygonik_com.zone_id}"
  name    = "thomaswygonik.com"
  type    = "TXT"
  ttl     = "3600"
  records = ["google-site-verification=J1H2cVKVGEmp5KCc4PeVSIorglsEryRBIy5OFzDqRas",
  "v=spf1 include:_spf.google.com ~all"]
}

resource "aws_route53_record" "gsuite_thomaswygonik_com_dkim" {
  zone_id = "${aws_route53_zone.thomaswygonik_com.zone_id}"
  name    = "google._domainkey"
  type    = "TXT"
  ttl     = "3600"
  records = ["v=DKIM1; k=rsa; p=MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAnVM3YvZ2XPpt48CrnGXR4z3qSoiaWHfqnM9YNsqPIlwnAMdp7hceZwAl1Op6I214nv3PSA3gX4LSsl75y8CC/2yLOgKaRL707n1wrSbZYXRwGT\"\"4L/5o5wsbB4kJ19SgStleNtu0JnZATPsLVL/Ta6mH/YDs1n76UDAEXX+jvFDPYWpgs21RGYrIiuh4JVSRzqiO13jg2aIp8mng0+d1/jszl/aEyrMnzUQnPjvERZQoII3n7tfTWx338hUehl6xHKfJ2/s/KKlIkm2rC+P0yirOLd5FqRmI22wuqRq20pNBAE6+b12OQsAqW7APBlU2J93YALgZB05b+aGveVAT6FwIDAQAB"]
}

resource "aws_route53_record" "gsuite_thomaswygonik_com_DMARC" {
  zone_id = "${aws_route53_zone.thomaswygonik_com.zone_id}"
  name    = "_dmarc.solarmora.com"
  type    = "TXT"
  ttl     = "3600"
  records = ["v=DMARC1; p=reject; rua=mailto:postmaster@solarmora.com, mailto:dmarc@solarmora.com"]
}

resource "aws_route53_record" "gsuite_thomaswygonik_com_MX" {
  zone_id = "${aws_route53_zone.thomaswygonik_com.zone_id}"
  name    = "thomaswygonik.com"
  type    = "MX"
  ttl     = "3600"

  records = ["1 ASPMX.L.GOOGLE.COM",
    "5 ALT1.ASPMX.L.GOOGLE.COM",
    "5 ALT2.ASPMX.L.GOOGLE.COM",
    "10 ALT3.ASPMX.L.GOOGLE.COM",
    "10 ALT4.ASPMX.L.GOOGLE.COM",
  ]
}
