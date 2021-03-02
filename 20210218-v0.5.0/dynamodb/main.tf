resource "aws_dynamodb_table" "basic-dynamodb-table" {
  name           = "driftctl-demo-db"
  billing_mode   = "PROVISIONED"
  read_capacity  = 20
  write_capacity = 20
  hash_key       = "UserId"
  range_key      = "CustomerName"

  attribute {
    name = "UserId"
    type = "S"
  }

  attribute {
    name = "CustomerName"
    type = "S"
  }

  attribute {
    name = "TopDrift"
    type = "N"
  }

  ttl {
    attribute_name = "TimeToExist"
    enabled        = false
  }

  global_secondary_index {
    name               = "CustomerNameIndex"
    hash_key           = "CustomerName"
    range_key          = "TopDrift"
    write_capacity     = 10
    read_capacity      = 10
    projection_type    = "INCLUDE"
    non_key_attributes = ["UserId"]
  }

  tags = {
    Name        = "driftctl-demo-db"
    Environment = "production"
  }
}