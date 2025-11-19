resource "aws_subnet" "publiceu-north-1a" {
  vpc_id     = aws_vpc.exodusvpc.id
  cidr_block = "10.100.1.0/24"
  availability_zone = "eu-north-1a"
  map_public_ip_on_launch = true
  tags = {
    Name = "publiceu-north-1a"
  }
}


resource "aws_subnet" "privateeu-north-1a" {
  vpc_id     = aws_vpc.exodusvpc.id
  cidr_block = "10.100.10.0/24"
  availability_zone = "eu-north-1a"
  map_public_ip_on_launch = false
  tags = {
    Name = "privateeu-north-1a"
  }
}









resource "aws_subnet" "publiceu-north-1b" {
  vpc_id     = aws_vpc.exodusvpc.id
  cidr_block = "10.100.2.0/24"
  availability_zone = "eu-north-1b"
  map_public_ip_on_launch = true
  tags = {
    Name = "publiceu-north-1c"
  }
}


resource "aws_subnet" "privateap-north-1b" {
  vpc_id     = aws_vpc.exodusvpc.id
  cidr_block = "10.100.20.0/24"
  availability_zone = "eu-north-1b"
  map_public_ip_on_launch = false
  tags = {
    Name = "privateeu-north-1b"
  }
}










resource "aws_subnet" "publiceu-north-1c" {
  vpc_id     = aws_vpc.exodusvpc.id
  cidr_block = "10.100.3.0/24"
  availability_zone = "eu-north-1c"
  map_public_ip_on_launch = true
  tags = {
    Name = "publiceu-north-1c"
  }
}



resource "aws_subnet" "privateeu-north-1c" {
  vpc_id     = aws_vpc.exodusvpc.id
  cidr_block = "10.100.30.0/24"
  availability_zone = "eu-north-1c"
  map_public_ip_on_launch = false
  tags = {
    Name = "privateeu-north-1c"
  }
}
