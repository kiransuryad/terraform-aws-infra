output "table_name" {
  description = "DynamoDB table name"
  value       = aws_dynamodb_table.my_table.name
}
