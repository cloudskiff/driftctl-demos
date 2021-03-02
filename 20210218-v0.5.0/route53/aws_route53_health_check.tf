resource "aws_route53_health_check" "demo-healthcheck" {
  fqdn              = "cia.gov"
  port              = 80
  type              = "HTTP"
  resource_path     = "/"
  failure_threshold = "5"
  request_interval  = "30"

  tags = {
    Name = "driftctl-demo-healthcheck"
  }
}