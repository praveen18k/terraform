variable "ami_id" {
  type    = string
  default = "ami-0b4f379183e5706b9"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "instance_names" {
  type    = list(any)
  default = ["MongoDB", "Cart", "Catalogue", "User", "Redis"]
}
