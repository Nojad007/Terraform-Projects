resource "aws_eip" "elasticipforexodus" {
  domain           = "vpc"
  
  tags = {
    Name    = "elasticipfortheexodus"
  }
  depends_on = [aws_internet_gateway.internetgateforexodus]
}


resource "aws_nat_gateway" "exodusnat" {
  allocation_id                  = aws_eip.elasticipforexodus.id
  subnet_id                      = aws_subnet.publiceu-north-1a.id
  tags = {
    Name    = "elasticipfortheexodus"
  }
}


