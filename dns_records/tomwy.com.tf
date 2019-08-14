resource "aws_route53_zone" "tomwy_com" {
  name              = "tomwy.com"
}

# SPF Record for Mailgun
resource "aws_route53_record" "spf_home_tomwy_com" {
  zone_id = "${aws_route53_zone.tomwy_com.zone_id}"
  name    = "home.tomwy.com"
  type    = "TXT"
  records = ["v=spf1 include:mailgun.org ~all"]
  ttl     = "300"
}

# DKIM record for Mailgun
resource "aws_route53_record" "dkim_home_tomwy_com" {
  zone_id = "${aws_route53_zone.tomwy_com.zone_id}"
  name    = "smtp._domainkey.home.tomwy.com"
  type    = "TXT"
  records = ["k=rsa; p=MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAqrVq3Vn/2h4YSZpgqnZLnV4UhTOLVQJBGrHxUix9i57ZyHG7EC1COYz6T79iQ8TDuzFIsihaMyxuLOS/hgspcXfLvpCicFgt7sW474fcyCIOwSbeQNYgzY1kiU0cDKiqNaeXzzsqT0QFuBxffy8WD8KFl2thLxli3MlBjRK3NU8MSIAlw2vMg6DMbJh9mtThY/gflQPyl\"\"gYLzz+9P7iAsv7249cyKi92iG2VQTdZTZ1pjTBQP5//nAFIJu21Os+QFLK13iF7alpRbSRSn0IjmX5COqMnXD4Bxxnz86nYpDG20cx7QRpK4R4KARx5e+q5oWDp1uZD8F+f6kbxM01l8wIDAQAB"]
  ttl     = "300"
}

# MX Records for Mailgun
resource "aws_route53_record" "mxa_home_tomwy_com" {
  zone_id = "${aws_route53_zone.tomwy_com.zone_id}"
  name    = "home.tomwy.com"
  type    = "MX"
  records = ["10 mxa.mailgun.org", "10 mxb.mailgun.org"]
  ttl     = "300"
}

# CNAME for tracking opens, clicks, unsubscribes
resource "aws_route53_record" "mgtracking_home_tomwy_com" {
  zone_id = "${aws_route53_zone.tomwy_com.zone_id}"
  name    = "email.home.tomwy.com"
  type    = "CNAME"
  records = ["mailgun.org"]
  ttl     = "300"
}

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