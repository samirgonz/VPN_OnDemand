# Create EIP
resource "aws_eip" "vpn_eip" {
  vpc        = true
  depends_on = [aws_internet_gateway.vpn_igw]

}

# Attach EIP with instance
resource "aws_eip_association" "eip_assoc" {
  instance_id   = aws_instance.vpn_instance.id
  allocation_id = aws_eip.vpn_eip.id
}