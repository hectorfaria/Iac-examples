resource "aws_key_pair" "terra-key" {
  key_name   = "terrakey"
  public_key = file("terra-key.pub")
}

resource "aws_instance" "terra-inst" {
  ami                    = var.AMIS[var.REGION]
  instance_type          = "t2.micro"
  availability_zone      = var.ZONE1
  key_name               = aws_key_pair.terra-key.key_name
  vpc_security_group_ids = ["sg-02d9141ad0ab5dcbd"]
  tags = {
    Name = "T-Instance"
  }

  connection {
    user        = var.USER
    private_key = file("terra-key")
    host        = self.public_ip
  }

  provisioner "file" {
    source      = "web.sh"
    destination = "/tmp/web.sh"
  }

  provisioner "remote-exec" {
    inline = [
      "chmod u+x /tmp/web.sh",
      "sudo /tmp/web.sh"
    ]
  }


}
