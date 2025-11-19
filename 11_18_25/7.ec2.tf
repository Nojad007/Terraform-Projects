#resource "aws_instance" "winbastion" {
#  ami           = "ami-0b0faec6b121c8bca" # sa-east-1
#  instance_type = "t3.large"
#  security_groups = [aws_security_group._ec2_sg.id, aws_security_group.ping.id]

#  subnet_id = aws_subnet.publicsa-east-1a.id
#  associate_public_ip_address = true
#  #user_data = file("user_data.sh")

#  resource "aws_key_pair" "bastionkeypair" {
#  key_name   = "bastion-key"
#  public_key = "nojad007"
#}

#  tags = {
#    Name = "bastion ec2"
#  }
#}








resource "aws_instance" "audi_ec2" {
  ami           = "ami-00f943f626f580b28"
  instance_type = "t3.micro"
  security_groups = [aws_security_group.ec2_sg.id, aws_security_group.ping.id]

  subnet_id = aws_subnet.publicsa-east-1a.id
  associate_public_ip_address = true
  user_data = file("user_data.sh")

  tags = {
    Name = "audi ec2"
  }
}










#resource "aws_instance" "colombiana_server" {
#  ami           = "ami-055e4d03ab1de5def" # sa-east-1
#  instance_type = "t3.micro"
#  security_groups = [aws_security_group_ping.id, aws_security_group.ec2_sg.id]

#  subnet_id = aws_subnet.publicsa-east-1a.id
#  associate_public_ip_address = true
#  user_data = file("user_data2.sh")

#  tags = {
#    Name = "colombiana ec2"
#  }
#}