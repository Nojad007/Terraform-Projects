####  Bastion Host  #####


#resource "aws_security_group" "bastion_ec2_sg" {
#  name        = "bastion_ec2_sg"
#  description = "Allows http and rdp in"
#  vpc_id      = aws_vpc.exodusvpc.id
#    tags = {
#    Name = "bastion ec2"
#  }
#}


#resource "aws_vpc_security_group_ingress_rule" "bastion_http_in" {
#  security_group_id = aws_security_group.bastion_ec2_sg.id
#  cidr_ipv4         = "0.0.0.0/0"
#  from_port         = 80
#  ip_protocol       = "tcp"
#  to_port           = 80

#  tags = {
#    Name = "audi ec2 ingress http"
#  }
#}



#resource "aws_vpc_security_group_ingress_rule" "rdp_in" {
#  security_group_id = aws_security_group.bastion_ec2_sg.id
#  cidr_ipv4         = "0.0.0.0/0"
#  from_port         = 3389
#  ip_protocol       = "tcp"
#  to_port           = 3389

#  tags = {
#    Name = "bastion rdp ingress http"
#  }
#}


#resource "aws_vpc_security_group_egress_rule" "bastion_egress" {
#  security_group_id = aws_security_group.bastion_ec2_sg.id
#  cidr_ipv4         = "0.0.0.0/0"
#  ip_protocol       = "-1"

#  tags = {
#    Name = "bastion egress all ports"
#  }
#}














######  EC2 INSTANCE SECURITY GROUP P#####

resource "aws_security_group" "ec2_sg" {
  name        = "ec2_sg"
  description = "Allows_ssh inbound traffic and all http outbound traffic"
  vpc_id      = aws_vpc.exodusvpc.id
    tags = {
    Name = "for ec2"
  }
}


resource "aws_vpc_security_group_ingress_rule" "http" {
  security_group_id = aws_security_group.ec2_sg.id
  description       = "http from ALB"
  cidr_ipv4         = "0.0.0.0/0"
  from_port         = 80
  ip_protocol       = "tcp"
  to_port           = 80

  tags = {
    Name = "audi ec2 ingress http"
  }
}

resource "aws_vpc_security_group_ingress_rule" "ssh" {
  security_group_id = aws_security_group.ec2_sg.id
  cidr_ipv4         = "0.0.0.0/0"
  description       = "ssh from internet"
  from_port         = 22
  ip_protocol       = "tcp"
  to_port           = 22
  tags = {
    Name = "ingress ssh"
  }
}


resource "aws_vpc_security_group_egress_rule" "egress" {
  security_group_id = aws_security_group.ec2_sg.id
  cidr_ipv4         = "0.0.0.0/0"
  ip_protocol       = "-1"

  tags = {
    Name = "egress all ports"
  }
}

















####  ALB SECURITY GROUP #######

resource "aws_security_group" "alb_sg" {
  name        = "alb_sg"
  description = "Allows_ssh inbound traffic and all http outbound traffic"
  vpc_id      = aws_vpc.exodusvpc.id
    tags = {
    Name = "alb sg"
 }
}


resource "aws_vpc_security_group_ingress_rule" "httpinforalb" {
  security_group_id = aws_security_group.alb_sg.id
  cidr_ipv4         = "0.0.0.0/0"
  from_port         = 80
  ip_protocol       = "tcp"
  to_port           = 80
 }


resource "aws_vpc_security_group_egress_rule" "egress_for_alb" {
 security_group_id = aws_security_group.alb_sg.id
 cidr_ipv4         = "0.0.0.0/0"
 ip_protocol       = "-1"
}


















####### SECURITY GROUP FOR PING ########

resource "aws_security_group" "ping" {
  name        = "ping"
  description = "Allow icmp for ping"
  vpc_id      = aws_vpc.exodusvpc.id

  tags = {
    Name = "ping"
  }
}



resource "aws_vpc_security_group_ingress_rule" "icmp" {
 security_group_id = aws_security_group.ping.id
  cidr_ipv4         = "0.0.0.0/0"
  from_port         = "-1"
  ip_protocol       = "icmp"
  to_port           = "-1"
}


resource "aws_vpc_security_group_egress_rule" "egress_for_ping" {
 security_group_id = aws_security_group.ping.id
 cidr_ipv4         = "0.0.0.0/0"
 ip_protocol       = "-1"
}