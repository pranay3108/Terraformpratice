# main.tf

provider "aws" {
  region = var.aws_region # Use the region variable defined in variables.tf
}

resource "aws_instance" "example" {
  ami           = var.ami 
  instance_type = var.instance_type       # Use the instance type variable

  tags = {
    Name = "PranayInstance"
  }
}


