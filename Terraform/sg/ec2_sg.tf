provider "aws" {
  region = "us-east-1"
}
resource "aws_instance" "demo-sg-server" {
  ami = "ami-0f403e3180720dd7e"
  instance_type = "t2.micro"
  key_name = "dep"
  security_groups = [ "demo_sg" ]
}
resource "aws_security_group" "demo_sg" {
  name        = "demo_sg"
  description = "Allow ssh inbound traffic"

  ingress {
    description      = "ssh access to public"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

}