resource "aws_instance" "conditions" {
  count = 10
  ami   = var.ami_id
  instance_type = var.instance_type
}
