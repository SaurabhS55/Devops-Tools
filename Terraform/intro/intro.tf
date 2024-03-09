provider "aws" {
  region = "us-east-1"
}
resource "aws_instance" "demo-server" {
  ami = "ami-0f403e3180720dd7e"
  instance_type = "t2.micro"
  key_name = "dep"
}
