terraform {
  backend "s3" {
    bucket         = "my-terraform-backend-bucket-2025"
    key            = "eks/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-lock"
    encrypt        = true
  }
}
