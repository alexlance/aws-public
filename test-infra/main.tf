provider "aws"               { region  = "ap-southeast-2" }
variable "name"              { default = "test" }
variable "instance_type"     { default = "t3.micro" }

resource "aws_instance" "main" {
    tags = {
      Name = "${var.name}"
    }
    ami = "ami-0321e881c7d4f6146"
    instance_type = "${var.instance_type}"
    associate_public_ip_address = true
    root_block_device {
        volume_size = 20
        volume_type = "gp2"
    }
}

