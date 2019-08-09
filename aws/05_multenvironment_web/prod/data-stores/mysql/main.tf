terraform {
  backend "s3" {
    encrypt        = true
    bucket         = "***YOUR_BUCKET_NAME***"
    key            = "prod/data-stores/mysql/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "***YOUR_TABLE_NAME***"
  }
}

provider "aws" {
  region = "us-east-1"
}

module "database" {
  source = "../../../modules/data-stores/mysql"

  db_name       = "proddb"
  storage_size  = 10
  instance_type = "db.t2.micro"
  db_password   = var.db_password
}