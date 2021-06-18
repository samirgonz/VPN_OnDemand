resource "aws_vpc" "vpn_vpc" {
  cidr_block = "172.16.10.0/28"
  
  tags = {
    Name = "VPN_VPC"
  }
}