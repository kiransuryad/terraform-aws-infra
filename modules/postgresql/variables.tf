variable "name" {
  description = "PostgreSQL RDS instance name"
}

variable "instance_class" {
  description = "Instance type for PostgreSQL RDS instance"
}

variable "allocated_storage" {
  description = "Allocated storage for PostgreSQL RDS instance"
}

variable "engine_version" {
  description = "PostgreSQL engine version"
}

variable "username" {
  description = "Username for PostgreSQL RDS instance"
}

variable "password" {
  description = "Password for PostgreSQL RDS instance"
}

variable "db_name" {
  description = "Name for PostgreSQL database"
}

variable "common_tags" {
  description = "Common tags to apply to all resources"
  type        = map(string)
}

variable "environment" {
  description = "Environment name"
}

variable "private_subnets" {
  description = "Private subnets to use for PostgreSQL RDS instance"
  type        = list(string)
}

variable "security_group_ids" {
  description = "Security group IDs to associate with PostgreSQL RDS instance"
  type        = list(string)
}
