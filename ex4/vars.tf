variable "REGION" {
  default = "us-east-1"
}

variable "ZONE1" {
  default = "us-east-1a"
}

variable "ZONE2" {
  default = "us-east-1b"
}
variable "ZONE3" {
  default = "us-east-1c"
}

variable "AMIS" {
  type = map(any)
  default = {
    us-east-1 = "ami-069aabeee6f53e7bf"
    us-east-2 = "ami-0b0f111b5dcb2800f"
  }
}

variable "USER" {
  default = "ec2-user"
}
