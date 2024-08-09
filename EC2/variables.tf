variable "ami_id" {
  type    = string
  default = "ami-0b4f379183e5706b9"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "sg_name" {
  default = "allow_all"
}

variable "sg_cidr" {
  type    = list(any)
  default = ["0.0.0.0/0"] #this is list
}
variable "tags" {
  type = map(any)
  default = {
    name        = "webserver"
    environment = "dev"
    project     = "mycareer"
    cost_center = "cc_cam"

  }

}
