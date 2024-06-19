provider "aws" {
  region = var.region
}

##############################################

module "vpc" {
  source              = "./modules/vpc"
  region              = var.region
  vpc_cidr            = var.vpc_cidr
  public_subnet_cidr  = var.public_subnet_cidr
  private_subnet_cidr = var.private_subnet_cidr
  availability_zone   = var.availability_zone
}

#############################################

module "security_group" {
  source = "./modules/security_group"
  vpc_id = module.vpc.vpc_id
}

############################################

module "key_pair" {
  source   = "./modules/key_pair"
  key_name = "nader"

}
############################################

module "bastion" {
  source             = "./modules/ec2"
  ami                = var.bastion_ami
  instance_type      = var.bastion_instance_type
  key_name           = module.key_pair.key_name
  public_subnet_id   = module.vpc.public_subnet_id
  private_subnet_id  = module.vpc.private_subnet_id
  name               = "BastionHost"
  private_key_path   = module.key_pair.private_key_path
  server_sg_id = [module.security_group.server_sg_id]
  

}
############################################
