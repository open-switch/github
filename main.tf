provider "github" {
  token        = "${var.github_access_token}"
  organization = "open-switch"
  version      = "~> 1.1"
}

terraform {
  backend "s3" {
    encrypt = true
    bucket = "opx-github-terraform-state-store"
    dynamodb_table = "opx-github-terraform-state-lock"
    region = "us-west-2"
    key = "terraform.tfstate"
  }
}
