# Create VPC
module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "2.92.0"

  name = var.name
  cidr = var.cidr

  azs             = var.azs
  private_subnets = var.private_subnets
  public_subnets  = var.public_subnets

  enable_nat_gateway = var.enable_nat_gateway
  single_nat_gateway = var.single_nat_gateway

  tags = merge(var.common_tags, {
    Terraform   = "true"
    Environment = var.environment
  })
}

# Output VPC subnets
output "private_subnets" {
  value = module.vpc.private_subnets
}

output "public_subnets" {
  value = module.vpc.public_subnets
}
