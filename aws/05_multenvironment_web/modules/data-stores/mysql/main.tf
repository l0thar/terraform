provider "aws" {
  region = "us-east-1"
}

resource "aws_db_instance" "example" {
  engine              = "mysql"
  allocated_storage   = var.storage_size
  instance_class      = var.instance_type
  name                = var.db_name
  username            = "admin"
  password            = var.db_password
  skip_final_snapshot = true
}
