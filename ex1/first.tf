terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "intro" {
  ami                    = "ami-069aabeee6f53e7bf"
  instance_type          = "t2.micro"
  availability_zone      = "us-east-1a"
  key_name               = "terraform"
  vpc_security_group_ids = ["sg-02d9141ad0ab5dcbd"]
  tags = {
    Name = "T-Instance"
  }
}
