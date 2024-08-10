locals {
  ami_id        = "ami-0b4f379183e5706b9"
  key_public    = file("${path.module}/daws74s.pub")
  instance_type = var.prod ? "t2.medium" : "t2.micro"
}
