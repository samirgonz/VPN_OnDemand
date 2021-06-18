resource "aws_instance" "vpn_instance" {
  ami           = "ami-0aeeebd8d2ab47354"
  instance_type = "t2.micro"
  key_name      = "a4l"

  network_interface {
    network_interface_id = aws_network_interface.vpn_prim_network.id
    device_index         = 0

  }

  tags = {
    Name = "VPN_OnDemand"
  }

}