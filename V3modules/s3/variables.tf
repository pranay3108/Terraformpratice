# variables.tf in the module directory (modules/my_module)

variable "bucket" {
  type = string
}
variable "aws_region" {
  description = "AWS region"
  type        = string

}