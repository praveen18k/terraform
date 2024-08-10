resource "aws_instance" "conditions" {
  ami             = var.ami_id
  instance_type   = var.instance_name == "MongoDB" ? "t2.medium" : "t2.micro"
}