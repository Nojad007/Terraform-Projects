resource "aws_internet_gateway" "internetgateforexodus" {
  vpc_id = aws_vpc.exodusvpc.id

  tags = {
    Name    = "internetgateforexodus"
  }
}