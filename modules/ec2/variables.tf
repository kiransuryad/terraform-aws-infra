variable "name" {
  description = "Name for EC2 instance"
}

variable "ami" {
  description = "AMI ID for EC2 instance"
}

variable "instance_type" {
  description = "Instance type for EC2 instance"
}

variable "associate_public_ip_address" {
  description = "Associate a public IP address with the EC2 instance"
  default     = true
}

variable "key_name" {
  description = "Name of key pair to use for EC2 instance"
}

variable "common_tags" {
  description = "Common tags to apply to all resources"
  type        = map(string)
}

variable "environment" {
  description = "Environment name"
}

variable "subnet_id" {
  description = "Subnet ID for EC2 instance"
}

variable "security_group_ids" {
  description = "Security group IDs to associate with EC2 instance"
  type        = list(string)
}
