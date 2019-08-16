variable "region" {
  description = "The region where the VPC should be deployed."
}

variable "vpc_name" {
  description = "The name of the VPC."
}

variable "vpc_cidr" {
  description = "The CIDR block for the VPC."
}

variable "vswitch_subnet" {
  description = "The subnet that the vswitch should use."
}

variable "vswitch_az" {
  description = "The Availability Zone that the vswitch will be in."
}

variable "vswitch_name" {
  description = "The name for the vswitch subnet."
}
