resource "aws_instance" "ec2" {
    ami = "ami-0b4f379183e5706b9"
    instance_type = "t2.micro"
    tags = "Dev"
}