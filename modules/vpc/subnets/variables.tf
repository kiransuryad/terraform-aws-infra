variable "private_subnet_cidrs" {
  description = "CIDR blocks for private subnets"
  type        = list(string)
}

variable "public_subnet_cidrs" {
  description = "CIDR blocks for public subnets"
  type        = list(string)
}

variable "common_tags" {
  description = "Common tags to apply to all resources"
  type        = map(string)
}

variable "environment" {
  description = "Environment name"
}

variable "azs" {
  description = "Availability zones to use for subnets"
  type        = list(string)
}
