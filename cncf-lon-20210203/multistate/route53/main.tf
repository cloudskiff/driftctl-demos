resource "aws_route53_zone" "cia_gov" {
  name = var.domain_name
}

resource "aws_route53_record" "cia_gov" {
  zone_id = aws_route53_zone.cia_gov.zone_id
  name    = var.domain_name
  type    = "A"
  ttl     = "300"
  records = ["192.0.78.137", "192.0.78.209"]
}