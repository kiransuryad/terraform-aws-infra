# Create DynamoDB table
resource "aws_dynamodb_table" "my_table" {
  name           = var.table_name
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = var.hash_key
  stream_enabled = true

  attribute {
    name = var.hash_key
    type = "S"
  }

  tags = merge(var.common_tags, {
    Terraform   = "true"
    Environment = var.environment
  })
}
