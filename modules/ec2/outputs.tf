output "public_ips" {
  description = "Public IP addresses of EC2 instances"
  value       = aws_instance.ec2.*.public_ip
}
