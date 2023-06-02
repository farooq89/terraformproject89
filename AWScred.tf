provider "aws" {
  region = "eu-north-1"  # Set your desired AWS region
  access_key = "AKIARVLWEW5R5O7EB6Q7"  
  secret_key = "c8a3FrEIhpgwin8eIIkZN6VTgsNcB8rEZ5E+kxDe"  
}



provider "aws" {
  region = "us-east-1"  # Set your desired AWS region
}

resource "aws_instance" "example" {
  ami           = "ami-097d5b19d4f1a7d1b"  # Specify the ID of the Amazon Machine Image (AMI) you want to use
  instance_type = "t2.micro"  # Set the desired instance type

  # Specify other instance configuration options as needed
  key_name      = "dotnetapp"
  subnet_id     = "subnet-0ef0c2b1ec9f62c79"
  security_group_ids = ["sg-0ccc6a0ae4562052e"]

  tags = {
    Name = "MyInstance"
  }
}
