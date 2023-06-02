provider "aws" {
  alias = "second"
  region = "us-east-1"
}

resource "aws_instance" "example" {
  ami           = "ami-097d5b19d4f1a7d1b"  
  instance_type = "t2.micro"  # Set the desired instance type

  # Specify other instance configuration options as needed
  key_name      = "dotnetapp"
  subnet_id     = "subnet-0ef0c2b1ec9f62c79"
  security_group_ids = "sg-0ccc6a0ae4562052e"

  tags = {
    Name = "MyInstance"
  }
}
