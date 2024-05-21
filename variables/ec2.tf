resource "aws_instance" "roboshop"{
    ami = var.ami_id 
    instance_type = var.instance_type
    security_groups = [aws_security_group.Allow-all-1.name]
    
}


