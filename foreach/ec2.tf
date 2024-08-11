resource "aws_instance" "roboshop" {
  ami = var.ami_id
  instance_type = var.instance_type
}

output "aws_instance_info" {
  value = aws_instance.roboshop
}