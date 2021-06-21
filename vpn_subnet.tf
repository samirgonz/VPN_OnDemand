resource "aws_subnet" "vpn_subnet" {
  vpc_id     = aws_vpc.vpn_vpc.id
  cidr_block = "172.16.10.0/28"
  # availability_zone = "us-east-1a"

  tags = {
    Name = "VPN Subnet"
  }
}