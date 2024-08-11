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
