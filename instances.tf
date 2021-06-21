data "aws_ami" "ubuntu" {
  most_recent = true
  owners = ["amazon"] 

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu*20*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}
resource "aws_instance" "vpn_instance" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = var.vpn_instance_type
  key_name      = "a4l"

  network_interface {
    network_interface_id = aws_network_interface.vpn_prim_network.id
    device_index         = 0

  }

  tags = {
    Name = "VPN_OnDemand"
  }

}