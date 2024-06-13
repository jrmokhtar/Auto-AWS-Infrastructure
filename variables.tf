variable "region" {
  description = "The AWS region to create resources in"
  type        = string
  default     = "eu-north-1"
}

variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
  type        = string
  default = "10.0.0.0/16"
}

variable "public_subnet_cidr" {
  description = "The CIDR block for the public subnet"
  type        = string
  default = "10.0.1.0/24"
}

variable "private_subnet_cidr" {
  description = "The CIDR block for the private subnet"
  type        = string
  default = "10.0.2.0/24"
}

variable "availability_zone" {
  description = "The availability zone for the subnets"
  type        = string
  default = "eu-north-1a"
}

variable "bastion_ami" {
  description = "The AMI to use for the bastion host"
  type        = string
  default = "ami-0705384c0b33c194c"
}

variable "bastion_instance_type" {
  description = "The instance type for the bastion host"
  type        = string
  default     = "t3.micro"
}

variable "server_ami" {
  description = "The AMI to use for the server"
  type        = string
  default = "ami-0705384c0b33c194c"
}

variable "server_instance_type" {
  description = "The instance type for the server"
  type        = string
  default     = "t3.micro"
}
