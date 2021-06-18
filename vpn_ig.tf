# Create Interface GW
resource "aws_internet_gateway" "vpn_igw" {
 vpc_id = aws_vpc.vpn_vpc.id
 tags = {
        Name = "My VPC Internet Gateway"
    }
}