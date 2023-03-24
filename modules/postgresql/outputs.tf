output "host" {
  description = "PostgreSQL RDS instance endpoint"
  value       = aws_db_instance.postgresql.address
}
