variable "region" {
  description = "The AWS region to create resources in"
  type        = string
  default = "eu-north-1"
}

variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
  type        = string
}

variable "public_subnet_cidr" {
  description = "The CIDR block for the public subnet"
  type        = string
}

variable "private_subnet_cidr" {
  description = "The CIDR block for the private subnet"
  type        = string
}

variable "availability_zone" {
  description = "The availability zone for the subnets"
  type        = string
  default = "eu-north-1a"
}

# variable "private_route_table_id" {
#   description = "The ID of the private route table"
#   type        = string
# }