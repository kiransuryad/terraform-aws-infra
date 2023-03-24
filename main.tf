# Define provider and region
provider "aws" {
  region = var.region
}

# Create VPC
module "vpc" {
  source             = "./vpc"
  name               = var.vpc_name
  cidr               = var.vpc_cidr
  azs                = var.azs
  enable_nat_gateway = var.enable_nat_gateway
  single_nat_gateway = var.single_nat_gateway
  common_tags        = var.common_tags
  environment        = var.environment
  private_subnets    = module.vpc_subnets.private_subnets
  public_subnets     = module.vpc_subnets.public_subnets
}

# Create DynamoDB table
module "dynamodb" {
  source      = "./dynamodb"
  table_name  = var.dynamodb_table_name
  hash_key    = var.dynamodb_hash_key
  common_tags = var.common_tags
  environment = var.environment
}

# Create PostgreSQL RDS instance
module "postgresql" {
  source             = "./postgresql"
  name               = var.postgresql_name
  instance_class     = var.postgresql_instance_class
  allocated_storage  = var.postgresql_allocated_storage
  engine_version     = var.postgresql_engine_version
  username           = var.postgresql_username
  password           = var.postgresql_password
  db_name            = var.postgresql_db_name
  common_tags        = var.common_tags
  environment        = var.environment
  private_subnets    = module.vpc_subnets.private_subnets
  security_group_ids = [module.postgresql_sg.security_group_id]
}

# Create EC2 instances
module "ec2" {
  source                      = "./ec2"
  name                        = var.ec2_name
  ami                         = var.ec2_ami
  instance_type               = var.ec2_instance_type
  associate_public_ip_address = var.ec2_associate_public_ip_address
  key_name                    = var.ec2_key_name
  common_tags                 = var.common_tags
  environment                 = var.environment
  subnet_id                   = module.vpc_subnets.private_subnets[0]
  security_group_ids          = [module.ec2_sg.security_group_id]
}

# Define outputs
output "dynamodb_table_name" {
  value = module.dynamodb.table_name
}

output "postgresql_host" {
  value = module.postgresql.host
}

output "ec2_public_ips" {
  value = module.ec2.public_ips
}
