variable "ami_id" {
    #type = string
    default = "ami-0f3c7d07486cad139"
}

variable "instance_type" {
    #type = string
    default = "t2.micro"
}

variable "aws_security_group"{
    type = string
    default = "Allow-all-1"
}