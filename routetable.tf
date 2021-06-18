#Create route table
resource "aws_route_table" "vpn_route_table" {
  vpc_id = aws_vpc.vpn_vpc.id

  tags = {
    Name = "My VPN Route Table"
  }
}

#Create internet access
resource "aws_route" "vpn_internet_access" {
  route_table_id         = aws_route_table.vpn_route_table.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.vpn_igw.id
}

#Associate route table with subnet
resource "aws_route_table_association" "vpn_rt_subnet" {
  route_table_id = aws_route_table.vpn_route_table.id
  subnet_id      = aws_subnet.vpn_subnet.id

}