resource "aws_instance" "conditions" {
  count         = 5
  ami           = var.ami_id
  instance_type = var.instance_type
  tags = {
    Name = var.instance_names[count.index]
  }
}

