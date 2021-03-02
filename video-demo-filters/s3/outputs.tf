output "staging_bucket" {
  value = aws_s3_bucket.staging-bucket.id
}

output "production_bucket" {
  value = aws_s3_bucket.production-bucket.id
}