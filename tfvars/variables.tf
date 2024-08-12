#value mentioned in variable.tf are default values
#we can always override them

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
    Web   = "t2.micro"
  }
}

variable "zone_id" {
  default = "Z02678062G6UOXQUMHK56"
}

variable "domain" {
  default = "awsdevops.icu"
}

# declaring variables but not providing value
variable "sg_name" {
  type = string
}

variable "sg_cidr" {
  default = ["0.0.0.0/0"]
}

