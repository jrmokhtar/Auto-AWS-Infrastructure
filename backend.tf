terraform {
  backend "s3" {
    bucket         = "your-bucket"
    key            = ".tfstate-path"
    region         = "region"
    dynamodb_table = "your-table"
    encrypt        = true
  }
}
