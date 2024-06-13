variable "ami" {
  description = "The AMI to use for the instance"
  type        = string
  default     = "ami-0705384c0b33c194c"
}

variable "instance_type" {
  description = "The instance type for the instance"
  type        = string
  default     = "t3.micro"
}

variable "key_name" {
  description = "The key name to use for the instance"
  type        = string
  default     = "nader"
}

variable "name" {
  description = "The name tag for the instance"
  type        = string
  default     = "nader-server"
}

variable "public_subnet_id" {
  description = "The subnet ID to launch the instance in"
  type        = string
}

variable "server_sg_id" {
  description = "The security group IDs to associate with the instance"
  type        = list(string)
}

variable "private_key_path" {
  description = "Path to the private key file"
  type        = string
}
variable "private_subnet_id" {
  type = string
}