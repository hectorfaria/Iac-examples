terraform {
  backend "s3" {
    bucket = "terra-nimzo"
    key    = "terraform/backend_ex6"
    region = "us-east-1"
  }
}
