variable "ami_id" {
  type    = string
  default = "ami-0b4f379183e5706b9"
}

# variable "instance_type" {
#   default = "t2.micro"
# }

variable "instances" {
  type = map(any)
  default = {
    MongoDB = "t2.micro"
    Redis   = "t2.micro"
  }
}

variable "zone_id" {
  default = "Z02678062G6UOXQUMHK56"
}

variable "domain" {
  default = "awsdevops.icu"
}

variable "sg_name" {
  default = "allow_all"
}

variable "sg_cidr" {
  default = ["0.0.0.0/0"]
}

