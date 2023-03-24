# VPC settings
variable "name" {
  description = "VPC name"
}

variable "cidr" {
  description = "VPC CIDR block"
}

variable "azs" {
  description = "Availability zones to use for VPC"
  type        = list(string)
}

variable "private_subnets" {
  description = "Private subnets in VPC"
  type        = list(string)
}

variable "public_subnets" {
  description = "Public subnets in VPC"
  type        = list(string)
}

variable "enable_nat_gateway" {
  description = "Enable NAT gateway for private subnets"
  default     = true
}

variable "single_nat_gateway" {
  description = "Use a single NAT gateway for all private subnets"
  default     = true
}

variable "common_tags" {
  description = "Common tags to apply to all resources"
  type        = map(string)
}

variable "environment" {
  description = "Environment name"
}
