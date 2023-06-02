provider "aws" {
  alias = "second"
  region = "us-east-1"
}

resource "aws_security_group" "sg" {
  name        = "my-security-group"
  description = "Example security group"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
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


resource "aws_instance" "NEW" {
  ami           = "ami-053b0d53c279acc90"  
  instance_type = "t2.micro"  # Set the desired instance type

  # Specify other instance configuration options as needed
  key_name      = "dotnetapp"
  subnet_id     = "subnet-0ef0c2b1ec9f62c79"

  tags = {
    Name = "MyInstance"
  }
}
