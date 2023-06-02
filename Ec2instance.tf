provider "aws" {
  alias = "second"
  region = "us-east-1"
}


resource "aws_instance" "ubuntu" {
  ami           = "ami-053b0d53c279acc90"  
  instance_type = "t2.micro"  # Set the desired instance type

  # Specify other instance configuration options as needed
  key_name      = "dotnetapp"
  subnet_id     = "subnet-0ef0c2b1ec9f62c79"
  security_group_ids = ["ami-0261755bbcb8c4a84"]

  tags = {
    Name = "MyInstance"
  }
}
