variable "instance_type" {
  default     = "t2.micro"
}

variable "aws_region" {
  description = "AWS region"
  type        = string

}

variable "ami" {
  description = "The AMI ID to use for the EC2 instance"
  type        = string
}