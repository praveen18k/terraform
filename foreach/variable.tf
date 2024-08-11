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
    Web     = "t2.micro"
    #MongoDB = "t2.medium"
    Redis   = "t2.micro"
  }
}

variable "zone_id" {
  default = "Z02678062G6UOXQUMHK56"
}

variable "domain" {
  default = "awsdevops.icu"
}
