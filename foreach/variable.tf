variable "ami_id" {
  type    = string
  default = "ami-0b4f379183e5706b9"
}

# variable "instance_type" {
#   default = "t2.micro"
# }

variable "instances" {
  type = map
  default = {
    MongoDB   = "t3.medium"
    MySQL     = "t3.medium"
    Redis     = "t2.micro"
    Catalogue = "t2.micro"
    User      = "t2.micro"
  }
}
