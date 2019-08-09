provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "terraform_state" {
  bucket = "YOUR_BUCKET_NAME"  # MUST BE GLOBALLY UNIQUE!

  versioning {
    enabled = true
  }

  lifecycle {
      prevent_destroy = true
  }
}

resource "aws_dynamodb_table" "terraform_lock" {
  name           = "YOUR_DYNAMODB_TABLE_NAME"
  hash_key       = "LockID"
  read_capacity  = 5
  write_capacity = 5

  attribute {
    name = "LockID"
    type = "S"
  }

  tags = {
    Name = "terraform-lock"
  }
}

# After the bucket and DynamoDB table are created, add the following in a .tf file
# in your project directory (needs to be in at least one).
# If added to an existing directory where you've run `terraform init` previously, it
# will # tell you to run the init command again to update to the new backend.
#
# terraform {
#   backend "s3" {
#     encrypt        = true
#     bucket         = "YOUR_BUCKET_NAME"
#     key            = "<path>/terraform.tfstate"
#     region         = "us-east-1"
#     dynamodb_table = "YOUR_DYNAMODB_TABLE_NAME"
#   }
# }
