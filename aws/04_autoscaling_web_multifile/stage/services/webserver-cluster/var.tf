variable "server_port" {
  description = "The port the server will use for HTTP requests"
  default     = 8080
}

variable "elb_port" {
  description = "The port the web server will use for HTTP requests"
  default     = 80
}
