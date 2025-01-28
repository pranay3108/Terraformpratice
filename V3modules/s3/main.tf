
provider "aws" {
  region = var.aws_region  # Use the region variable
}

resource "aws_s3_bucket" "example" {
  bucket = var.bucket  # Use the bucket name variable
  acl    = "private"        # Default ACL setting for private access

  tags = {
    Name        = "PranayTerraformBucket"
    Environment = "Production"
  }
}

