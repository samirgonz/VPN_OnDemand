resource "aws_network_interface" "vpn_prim_network" {
  subnet_id       = aws_subnet.vpn_subnet.id
  private_ips     = ["172.16.10.4"]
  security_groups = [aws_security_group.vpn_sg.id]

  tags = {
    Name = "primary_network_interface"
  }
}