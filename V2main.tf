# main.tf

provider "aws" {
  region = var.aws_region # Use the region variable defined in variables.tf
}

resource "aws_instance" "example" {
  ami           = "ami-0e2c8caa4b6378d8c" # Replace with a valid AMI ID for your region
  instance_type = var.instance_type       # Use the instance type variable

  tags = {
    Name = "PranayInstance"
  }
}


