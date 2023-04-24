terraform {
  backend "s3" {
    bucket = "terra-nimzo"
    key    = "terraform/backend"
    region = "us-east-1"
  }
}