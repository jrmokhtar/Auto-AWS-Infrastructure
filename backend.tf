terraform {
  backend "s3" {
    bucket         = "naderr-bucket"
    key            = "~/Desktop/terraform/terraform.tfstate"
    region         = "eu-north-1"
    dynamodb_table = "nader-table"
    encrypt        = true
  }
}