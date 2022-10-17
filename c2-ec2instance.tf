# Resource: EC2 Instance

resource "aws_instance" "myec2" {
  ami = "ami-026b57f3c383c2eec"
  instance_type = "t3.micro"
  user_data = file("${path.module}/app1-install.sh")
  tags = {
    "Name" = "EC2 Demo"
  }
}