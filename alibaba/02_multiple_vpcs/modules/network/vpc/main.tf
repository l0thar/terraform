provider "alicloud" {
  region = var.region
}

resource "alicloud_vpc" "vpc" {
  name       = var.vpc_name
  cidr_block = var.vpc_cidr
}

resource "alicloud_vswitch" "vsw" {
  vpc_id            = alicloud_vpc.vpc.id
  cidr_block        = var.vswitch_subnet
  availability_zone = var.vswitch_az
  name              = var.vswitch_name
}
