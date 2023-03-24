# Create security group for EC2 instance
resource "aws_security_group" "ec2_sg" {
  name_prefix = "ec2-sg"
  vpc_id      = module.vpc.vpc_id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = merge(var.common_tags, {
    Terraform   = "true"
    Environment = var.environment
  })
}

# Create EC2 instance
resource "aws_instance" "ec2" {
  ami                         = var.ami
  instance_type               = var.instance_type
  associate_public_ip_address = var.associate_public_ip_address
  key_name                    = var.key_name
  subnet_id                   = var.subnet_id
  vpc_security_group_ids      = [aws_security_group.ec2_sg.id]

  tags = merge(var.common_tags, {
    Name        = var.name
    Terraform   = "true"
    Environment = var.environment
  })
}

# Output public IPs of EC2 instances
output "public_ips" {
  value = aws_instance.ec2.*.public_ip
}
