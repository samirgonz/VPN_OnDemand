/* data "aws_ami" "ubuntu" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "image-id"
    values = ["ami-09e67e426f25ce0d7"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}
 */resource "aws_instance" "vpn_instance" {
  # ami           = data.aws_ami.ubuntu.id
  ami           = "ami-09e67e426f25ce0d7"
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