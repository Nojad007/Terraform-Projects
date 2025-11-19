#data "aws_ami" "ami-055e4d03ab1de5def" {
#  most_recent = true
#  owners      = ["amazon"]

#  filter {
#    name   = "name"
#    values = ["al2023-ami-2023.*-x86_64"]
#  }
#}



resource "aws_launch_template" "audi_temp" {
  name_prefix   = "audi_temp"
  image_id      = "ami-00f943f626f580b28"
  instance_type = "t3.micro"

  vpc_security_group_ids = [aws_security_group.ec2_sg.id]

  user_data = base64encode(file("./user_data.sh"))
}



#  tag_specifications {
#    resource_type = "instance"
#    tags = {
#      Name    = "asg-instance"
#      Service = "Auto Scaling"
#    }
#  }

#  lifecycle {
#    create_before_destroy = true
#  }
