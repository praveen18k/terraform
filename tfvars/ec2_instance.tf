resource "aws_instance" "ec2" {
  ami             = var.ami_id
  instance_type   = var.instance_type
  security_groups = [aws_security_group.allow_all.name]
  tags            = var.ec2_tags
}

