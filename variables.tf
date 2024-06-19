variable "region" {
  description = "The AWS region to create resources in"
  type        = string
  default     = "region"
}

variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
  type        = string
  default = "vpc-cidr"
}

variable "public_subnet_cidr" {
  description = "The CIDR block for the public subnet"
  type        = string
  default = "subnet-cidr"
}

variable "private_subnet_cidr" {
  description = "The CIDR block for the private subnet"
  type        = string
  default = "subnet-cidr"
}

variable "availability_zone" {
  description = "The availability zone for the subnets"
  type        = string
  default = "region"
}

variable "bastion_ami" {
  description = "The AMI to use for the bastion host"
  type        = string
  default = "ami"
}

variable "bastion_instance_type" {
  description = "The instance type for the bastion host"
  type        = string
  default     = "type"
}

variable "server_ami" {
  description = "The AMI to use for the server"
  type        = string
  default = "ami"
}

variable "server_instance_type" {
  description = "The instance type for the server"
  type        = string
  default     = "type"
}
