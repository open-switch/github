# store terraform state in s3 with locking

provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "terraform_state" {
  bucket = "opx-github-terraform-state-store"
  versioning {
    enabled = true
  }
  lifecycle {
    prevent_destroy = true
  }
}

resource "aws_dynamodb_table" "terraform_state_lock" {
  name = "opx-github-terraform-state-lock"
  hash_key = "LockID"
  read_capacity = 1
  write_capacity = 1
  attribute {
    name = "LockID"
    type = "S"
  }
}
