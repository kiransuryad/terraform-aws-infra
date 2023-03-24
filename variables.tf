variable "environment" {
  description = "Environment name"
  default     = "dev"
}

variable "common_tags" {
  description = "Common tags to apply to all resources"
  type        = map(string)
  default = {
    Owner      = "John Doe"
    Department = "Engineering"
  }
}

variable "vpc_cidr" {
  description = "CIDR block for VPC"
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidrs" {
  description = "CIDR blocks for public subnets"
  type        = list(string)
  default = [
    "10.0.101.0/24",
    "10.0.102.0/24"
  ]
}

variable "private_subnet_cidrs" {
  description = "CIDR blocks for private subnets"
  type        = list(string)
  default = [
    "10.0.1.0/24",
    "10.0.2.0/24"
  ]
}

variable "azs" {
  description = "Availability zones to use for VPC and subnets"
  type        = list(string)
  default = [
    "us-east-1a",
    "us-east-1b"
  ]
}

variable "dynamodb_table_name" {
  description = "DynamoDB table name"
  default     = "my-table"
}

variable "dynamodb_hash_key" {
  description = "Hash key for DynamoDB table"
  default     = "id"
}

variable "postgresql_name" {
  description = "PostgreSQL RDS instance name"
  default     = "postgresql"
}

variable "postgresql_engine_version" {
  description = "PostgreSQL engine version"
  default     = "13.4"
}

variable "postgresql_instance_class" {
  description = "Instance type for PostgreSQL RDS instance"
  default     = "db.t3.micro"
}

variable "postgresql_allocated_storage" {
  description = "Allocated storage for PostgreSQL RDS instance"
  default     = 20
}

variable "postgresql_username" {
  description = "Username for PostgreSQL RDS instance"
  default     = "postgres"
}

variable "postgresql_password" {
  description = "Password for PostgreSQL RDS instance"
}

variable "postgresql_db_name" {
  description = "Name for PostgreSQL database"
  default     = "my_db"
}

variable "ec2_name" {
  description = "Name for EC2 instance"
  default     = "web-server"
}

variable "ec2_ami" {
  description = "AMI ID for EC2 instance"
  default     = "ami-0c94855ba95c71c99"
}

variable "ec2_instance_type" {
  description = "Instance type for EC2 instance"
  default     = "t2.micro"
}

variable "ec2_key_name" {
  description = "Name of key pair to use for EC2 instance"
}

variable "ec2_associate_public_ip_address" {
  description = "Associate a public IP address with the EC2 instance"
  default     = true
}

variable "private_subnets" {
  description = "Private subnets to use for PostgreSQL RDS instance"
  type        = list(string)
}

variable "security_group_ids" {
  description = "Security group IDs to associate with PostgreSQL RDS instance"
  type        = list(string)
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

variable "vpc_id" {
  description = "VPC ID"
}

variable "vpc_security_group_id" {
  description = "ID of VPC security group"
}

variable "ec2_security_group_id" {
  description = "ID of EC2 security group"
}

variable "s3_bucket_name" {
  description = "Name of S3 bucket for storing video files"
}

variable "s3_bucket_acl" {
  description = "ACL for S3 bucket"
  default     = "private"
}

variable "s3_bucket_policy" {
  description = "Policy for S3 bucket"
}

variable "s3_bucket_versioning_enabled" {
  description = "Enable versioning for S3 bucket"
  default     = true
}

variable "vlc_instance_type" {
  description = "Instance type for VLC EC2 instance"
  default     = "t2.micro"
}

variable "vlc_ami" {
  description = "AMI ID for VLC EC2 instance"
  default     = "ami-0c94855ba95c71c99"
}

variable "vlc_name" {
  description = "Name for VLC EC2 instance"
  default     = "vlc-server"
}

variable "vlc_key_name" {
  description = "Name of key pair to use for VLC EC2 instance"
}

variable "vlc_associate_public_ip_address" {
  description = "Associate a public IP address with the VLC EC2 instance"
  default     = true
}

variable "vlc_security_group_ids" {
  description = "Security group IDs to associate with VLC EC2 instance"
  type        = list(string)
}

variable "vlc_subnet_ids" {
  description = "Subnet IDs to launch VLC EC2 instance in"
  type        = list(string)
}
