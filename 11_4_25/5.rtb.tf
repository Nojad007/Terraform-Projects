resource "aws_route_table" "exodusroutetablepublic" {
  vpc_id = aws_vpc.exodusvpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.internetgateforexodus.id
  }

  tags = {
    Name = "exodusroutetable"
  }
}

resource "aws_route_table_association" "publica" {
  subnet_id      = aws_subnet.publiceu-north-1a.id
  route_table_id = aws_route_table.exodusroutetablepublic.id
}


resource "aws_route_table_association" "publicb" {
  subnet_id      = aws_subnet.publiceu-north-1b.id
  route_table_id = aws_route_table.exodusroutetablepublic.id
}



#resource "aws_route_table_association" "publicc" {
#  subnet_id      = aws_subnet.publiceu-north-1c.id
#  route_table_id = aws_route_table.exodusroutetablepublic.id
#}








#########PRIVATE###########


resource "aws_route_table" "exodusroutetableprivate" {
  vpc_id = aws_vpc.exodusvpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.internetgateforexodus.id
  }

  tags = {
    Name = "exodusroutetable"
  }
}

resource "aws_route_table_association" "privatea" {
  subnet_id      = aws_subnet.privateeu-north-1a.id
  route_table_id = aws_route_table.exodusroutetableprivate.id
}



#resource "aws_route_table_association" "privatec" {
#  subnet_id      = aws_subnet.privateap-north-1c.id
#  route_table_id = aws_route_table.exodusroutetableprivate.id
#}



#resource "aws_route_table_association" "privated" {
#  subnet_id      = aws_subnet.privateap-north-1d.id
#  route_table_id = aws_route_table.exodusroutetableprivate.id
#}