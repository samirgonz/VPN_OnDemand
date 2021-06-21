output "instance_IP" {
  value = aws_eip.vpn_eip.public_ip
}