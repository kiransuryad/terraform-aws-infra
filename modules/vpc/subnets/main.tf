# Create public subnets
resource "aws_subnet" "public_subnets" {
  count = length(var.public_subnet_cidrs)

  cidr_block              = var.public_subnet_cidrs[count.index]
  vpc_id                  = aws_vpc.my_vpc.id
  map_public_ip_on_launch = true

  availability_zone = var.azs[count.index % length(var.azs)]

  tags = merge(var.common_tags, {
    Name        = "public-${count.index + 1}"
    Terraform   = "true"
    Environment = var.environment
  })
}

# Create private subnets
resource "aws_subnet" "private_subnets" {
  count = length(var.private_subnet_cidrs)

  cidr_block = var.private_subnet_cidrs[count.index]
  vpc_id     = aws_vpc.my_vpc.id

  availability_zone = var.azs[count.index % length(var.azs)]

  tags = merge(var.common_tags, {
    Name        = "private-${count.index + 1}"
    Terraform   = "true"
    Environment = var.environment
  })
}


