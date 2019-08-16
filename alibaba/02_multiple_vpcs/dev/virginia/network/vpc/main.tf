provider "alicloud" {
  region = "us-east-1"
}
 
 module "vpc" {
  source = "../../../../modules/network/vpc"

  region   = "us-east-1"
  vpc_name = "Test-VPC-2"
  vpc_cidr = "172.17.0.0/16"

  vswitch_subnet = "172.17.1.0/24"
  vswitch_az     = "us-east-1a"
  vswitch_name   = "Test-Subnet"
}