resource "aws_security_group" "vpn_sg" {
  name        = "vpn_sg"
  description = "Allow VPN & SSH ports"
  vpc_id = aws_vpc.vpn_vpc.id

  ingress {
    description      = "Allow ICMP"
    from_port        = 0
    to_port          = 0
    protocol         = "icmp"
    cidr_blocks      = ["0.0.0.0/0"]
    #ipv6_cidr_blocks = [aws_vpc.vpn_vpc.ipv6_cidr_block]
  }
  ingress {
    description      = "Allow VPN TCP"
    from_port        = 443
    to_port          = 443
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    #ipv6_cidr_blocks = [aws_vpc.vpn_vpc.ipv6_cidr_block]
  }

  ingress {
    description      = "Allow VPN TCP"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    #ipv6_cidr_blocks = [aws_vpc.vpn_vpc.ipv6_cidr_block]
  }

  ingress {
    description      = "Allow VPN UDP"
    from_port        = 1194
    to_port          = 1194
    protocol         = "UDP"
    cidr_blocks      = ["0.0.0.0/0"]
    #ipv6_cidr_blocks = [aws_vpc.vpn_vpc.ipv6_cidr_block]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    /*ipv6_cidr_blocks = ["::/0"]*/
  }

  tags = {
    Name = "allow vpn & ssh ports"
  }
}