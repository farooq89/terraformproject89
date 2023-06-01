provider "aws" {
  region = "us-east-1"  # Set your desired AWS region
}

resource "aws_instance" "example" {
  ami           = "ami-0c94855ba95c71c99"  # Specify the ID of the Amazon Machine Image (AMI) you want to use
  instance_type = "t2.micro"  # Set the desired instance type

  # Specify other instance configuration options as needed
  key_name      = "my-key-pair"
  subnet_id     = "subnet-0123456789abcdef0"
  security_group_ids = ["sg-0123456789abcdef0"]

  tags = {
    Name = "MyInstance"
  }