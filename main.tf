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
  user_data = <<-EOF
              #!/bin/bash
              sudo yum update -y
              sudo yum install httpd -y
              sudo systemctl start httpd
              sudo bash -c "echo My First web server from terraform > /var/www/html/index.html"
              EOF
}
