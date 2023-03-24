# Create PostgreSQL RDS instance
resource "aws_db_instance" "postgresql" {
  identifier             = var.name
  engine                 = "postgres"
  engine_version         = var.engine_version
  instance_class         = var.instance_class
  allocated_storage      = var.allocated_storage
  username               = var.username
  password               = var.password
  name                   = var.db_name
  db_subnet_group_name   = aws_db_subnet_group.postgresql.id
  vpc_security_group_ids = var.security_group_ids
  publicly_accessible    = false
  skip_final_snapshot    = true

  tags = merge(var.common_tags, {
    Terraform   = "true"
    Environment = var.environment
  })
}

# Create subnet group for PostgreSQL
resource "aws_db_subnet_group" "postgresql" {
  name       = "postgresql-subnet-group"
  subnet_ids = var.private_subnets

  tags = merge(var.common_tags, {
    Terraform   = "true"
    Environment = var.environment
  })
}

# Output PostgreSQL host name
output "host" {
  value = aws_db_instance.postgresql.address
}
