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
    Web = "t2.micro"
    #MongoDB = "t2.medium"
    Redis = "t2.micro"
  }
}

variable "zone_id" {
  default = "Z02678062G6UOXQUMHK56"
}

variable "domain" {
  default = "awsdevops.icu"
}

# variable "sg_name" {
#   default = "allow_all"
# }

variable "ingress" {
  type = list(any)
  default = [
    {
      description = "Allowing port 80"
      from_port   = 80
      to_port     = 80
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    },
    {
      description = "Allowing port 443"
      from_port   = 443
      to_port     = 443
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    },
    {
      description = "Allowing port 22"
      from_port   = 22
      to_port     = 22
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  ]
}

