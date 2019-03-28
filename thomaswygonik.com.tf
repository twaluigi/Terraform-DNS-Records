resource "aws_route53_zone" "thomaswygonik_com" {
  name              = "thomaswygonik.com"
  delegation_set_id = "${aws_route53_delegation_set.main.id}"
}

resource "aws_route53_record" "gsuite_txt_thomaswygonik_com" {

  zone = "${aws_route53_zone.thomaswygonik_com.id}"
  name = "thomaswygonik.com"
  type = "TXT"
  ttl = "300"
  records = ["google-site-verification=FIeKiNnawjhTxNBa8jfh5cx9heNE92e_8UePxscpwts"]
}