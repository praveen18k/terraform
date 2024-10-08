# variable "ami_id" {
#   type    = string
#   default = "ami-0b4f379183e5706b9"
# }



variable "instance_names" {
  type    = list(any)
  default = ["MongoDB", "Cart", "Catalogue", "User", "Redis"]
}

variable "zone_id" {
  default = "Z02678062G6UOXQUMHK56"
}

variable "domain" {
  default = "awsdevops.icu"
}

variable "prod" {
  default = true
}
