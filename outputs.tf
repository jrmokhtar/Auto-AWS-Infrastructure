output "private_key_pem" {
  value     = module.key_pair.private_key_pem
  sensitive = true
}

# output "public_key_pem" {
#   value = module.key_pair.public_key_pem
# }

output "vpc_id" {
  value = module.vpc.vpc_id
}

output "public_subnet_id" {
  value = module.vpc.public_subnet_id
}

output "private_subnet_id" {
  value = module.vpc.private_subnet_id
}

output "bastion_instance_id" {
  value = module.bastion.instance_id
}

output "bastion_public_ip" {
  value = module.bastion.public_ip
}

output "server_instance_id" {
  value = module.bastion.instance_id
}

output "server_private_ip" {
  value = module.bastion.private_ip
}
