provider "aws" {
  region = "us-east-1"  # Set your desired AWS region
}

resource "aws_instance" "example" {
  ami           = "ami-0e2c8caa4b6378d8c"  # Replace with a valid AMI ID for your region
  instance_type = "t2.micro"                # Free-tier eligible instance type

  tags = {
    Name = "MyTerraformInstance"
  }

  # Optional: Key pair for SSH access
  key_name = "pranay"  # Replace with your SSH key pair name

  # Security group to allow SSH (port 22)
  vpc_security_group_ids = [aws_security_group.allow_ssh.id]
}

# Security group to allow SSH (port 22) access from any IP
resource "aws_security_group" "allow_ssh" {
  name_prefix = "allow_ssh_"
  description = "Allow SSH inbound traffic"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]  # Allow SSH access from anywhere
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]  # Allow all outbound traffic
  }
}
