# fetch AMI ID using data source

data "aws_ami" "ami_id" {
  most_recent = true
  owners      = ["amazon"] #you can give AWS account ID

  filter {
    name   = "name"
    values = ["amzn2-ami-kernel-5.10-hvm-*.0-x86_64-gp2"]
  }
}

output "ami_id" {
  value = data.aws_ami.ami_id.id
}

data "aws_vpc" "default" {
  default = true
}
output "vpc_info" {
  value = data.aws_vpc.default
}

resource "aws_security_group" "allow_http" {
  name        = "allow-port"
  vpc_id = data.aws_vpc.default.id
  description = "Allow inbound 80 traffic and all outbound traffic"

  ingress {
    description = "Allowing all inbound traffic"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# output "aws_security_group" {
#   value = data.aws_security_group.allow_http.id
# }
