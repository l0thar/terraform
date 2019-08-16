provider "alicloud" {
  region = "us-east-1"
}

resource "alicloud_vpc" "vpc" {
  name       = "Test-VPC"
  cidr_block = "172.16.0.0/16"
}

resource "alicloud_vswitch" "vsw" {
  vpc_id            = alicloud_vpc.vpc.id
  cidr_block        = "172.16.1.0/24"
  availability_zone = "us-east-1a"
  name              = "Test-Subnet"
}
