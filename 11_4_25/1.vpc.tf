resource "aws_vpc" "exodusvpc" {
  cidr_block       = "10.100.0.0/16"
  instance_tenancy = "default"
  
  enable_dns_hostnames = true
  enable_dns_support = true

  tags = {
    Name = "exodusvpc"
  }
}