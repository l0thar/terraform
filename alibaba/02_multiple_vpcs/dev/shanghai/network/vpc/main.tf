 provider "alicloud" {
  region = "cn-shanghai"
}
 
 module "vpc" {
  source = "../../../../modules/network/vpc"

  region   = "cn-shanghai"
  vpc_name = "Test-VPC-1"
  vpc_cidr = "172.16.0.0/16"

  vswitch_subnet = "172.16.1.0/24"
  vswitch_az     = "cn-shanghai-a"
  vswitch_name   = "Test-Subnet"
}