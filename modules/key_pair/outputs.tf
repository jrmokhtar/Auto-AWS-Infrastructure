output "private_key_pem" {
  value     = tls_private_key.nader.private_key_pem
  sensitive = true
}

output "key_name" {
  value = aws_key_pair.nader.key_name
}

output "private_key_path" {
  value = local_file.private_key.filename
}
