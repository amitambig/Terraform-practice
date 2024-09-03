terraform {
  backend "s3" {
    bucket = "terraform-practise-tfstate-bucket"
    key = "keys/terraform.tfstate"
    region = "us-east-1"
    encrypt = true
  }
}