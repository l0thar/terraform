variable "db_password" {
  description = "The password for the database. Must be at least 8 chars"
}

variable "storage_size" {
  description = "The size of the allocated storage for the database"
}

variable "instance_type" {
  description = "The type of instance to use for the database"
}

variable "db_name" {
  description = "The name of the database"
}
