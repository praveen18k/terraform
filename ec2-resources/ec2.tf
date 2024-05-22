resource "aws_instance" "roboshop"{
    ami = var.ami_id
    instance_type = var.instance_type
    security_groups = var.aws_security_group
}