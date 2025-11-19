resource "aws_instance" "audi_server" {
  ami           = "ami-055e4d03ab1de5def" # eu-north-1
  instance_type = "t3.micro"
  security_groups = [aws_security_group.ping.id, aws_security_group.web_server.id]

  subnet_id = aws_subnet.publiceu-north-1a.id
  associate_public_ip_address = true
  user_data = file("user_data.sh")

  tags = {
    Name = "audi server"
  }
}



resource "aws_instance" "colombiana_server" {
  ami           = "ami-055e4d03ab1de5def" # eu-north-1
  instance_type = "t3.micro"
  security_groups = [aws_security_group.ping.id, aws_security_group.web_server.id]

  subnet_id = aws_subnet.publiceu-north-1b.id
  associate_public_ip_address = true
  user_data = file("user_data2.sh")

  tags = {
    Name = "colombiana server"
  }
}