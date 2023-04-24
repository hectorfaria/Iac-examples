resource "aws_instance" "terra-inst" {
  ami                    = var.AMIS[var.REGION]
  instance_type          = "t2.micro"
  availability_zone      = var.ZONE1
  key_name               = "terraform"
  vpc_security_group_ids = ["sg-02d9141ad0ab5dcbd"]
  tags = {
    Name = "T-Instance"
  }
}
