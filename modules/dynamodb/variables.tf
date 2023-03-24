variable "table_name" {
  description = "DynamoDB table name"
}

variable "hash_key" {
  description = "Hash key for DynamoDB table"
}

variable "common_tags" {
  description = "Common tags to apply to all resources"
  type        = map(string)
}

variable "environment" {
  description = "Environment name"
}
