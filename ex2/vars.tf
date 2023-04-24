variable "REGION" {
  default = "us-east-1"
}

variable "ZONE1" {
  default = "us-east-1a"
}

variable "AMIS" {
  type = map(any)
  default = {
    us-east-1 = "ami-069aabeee6f53e7bf"
    us-east-2 = "ami-0b0f111b5dcb2800f"
  }
}
