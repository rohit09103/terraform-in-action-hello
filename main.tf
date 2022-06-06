provider "aws" {
  region = "ap-south-1"
}

# data "aws_ami" "ubuntu" {
#   most_recent = true

#   filter {
#     name = "name"
#     values = ["ubuntu/images/hvm-ssd/ubuntu-bionic-18.04-amd64-server-*"]
#   }

#   owners = [099720109477]
# }

resource "aws_instance" "helloworld" {
  ami = "ami-041d6256ed0f2061c"
  instance_type = "t2.micro"
}
