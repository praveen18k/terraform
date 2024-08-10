resource "aws_instance" "conditions" {
  count         = 5
  ami           = local.ami_id
  instance_type = var.instance_names[count.index] == "MongoDB" || var.instance_names[count.index] == "Redis" ? "t2.medium" : "t2.micro"
  tags = {
    Name = var.instance_names[count.index]
  }
}

resource "aws_route53_record" "record"{
    count = 5
    zone_id = var.zone_id
    name = "${var.instance_names[count.index]}.${var.domain}"
    type = "A"
    ttl = 1
    records = [aws_instance.conditions[count.index].private_ip]
}

