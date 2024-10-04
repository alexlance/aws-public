provider "aws"               { region  = "ap-southeast-2" }

resource "aws_instance" "main" {
  ami = "ami-00902d02d7a700776"  # debian 12 (bookworm) https://wiki.debian.org/Cloud/AmazonEC2Image/Bookworm
  instance_type = "t3.nano"
  subnet_id = "subnet-0bc38e1872488570e"
}
