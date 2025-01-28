# variables.tf

variable "instance_type" {
  description = "The type of instance to create"
  type        = string
  default     = "t2.micro" # Default value for instance type
}

variable "aws_region" {
  description = "The AWS region to deploy to"
  type        = string
  default     = "us-east-1" # Default region is us-east-1
}
