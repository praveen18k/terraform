resource "aws_instance" "roboshop" {
  for_each      = var.instances
  ami           = var.ami_id
  instance_type = each.value
  tags = {
    Name = each.key
  }
}

resource "aws_security_group" "sg_name" {
  name        = var.sg_name
  description = "Allow inbound traffic and all outbound traffic"

  ingress {
    description = "Allowing all inbound traffic"
    from_port   = 0
    to_port     = 0
    protocol    = "tcp"
    cidr_blocks = var.sg_cidr
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = var.sg_cidr
  }

}
