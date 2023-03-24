# Output VPC subnets
output "private_subnets" {
  description = "Private subnets in VPC"
  value       = module.vpc.private_subnets
}

output "public_subnets" {
  description = "Public subnets in VPC"
  value       = module.vpc.public_subnets
}
