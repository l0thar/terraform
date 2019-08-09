terraform {
  backend "s3" {
    encrypt        = true
    bucket         = "***YOUR_BUCKET_NAME***"
    key            = "stage/services/webserver-cluster/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "***YOUR_TABLE_NAME***"
  }
}

provider "aws" {
  region = "us-east-1"
}

module "webserver_cluster" {
  source = "../../../modules/services/webserver-cluster"

  cluster_name           = "webservers-stage"
  db_remote_state_bucket = "***YOUR_BUCKET_NAME***"
  db_remote_state_key    = "stage/data-stores/mysql/terraform.tfstate"

  instance_type = "t2.micro"
  min_size      = 2
  max_size      = 2
}
