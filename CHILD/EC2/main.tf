resource "aws_instance" "child_instance" {
  ami = var.variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

variable "pub_cidr" {
  default = "10.0.1.0/24"
}

variable "prv_cidr" {
  default = "10.0.2.0/24"
}

variable "tag" {
  default = "Main"
}
  instance_type = var.instance_type
  #subnet_id = var.subnet_id
  tags = {
    "Name" = "${var.server_tag}"
  }
}