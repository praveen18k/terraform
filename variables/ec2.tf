resource "aws_instance" "robovm" {
  ami                     = "ami-0f3c7d07486cad139"
  instance_type           = "t2.micro"
  
  tenancy                 = "host"
}