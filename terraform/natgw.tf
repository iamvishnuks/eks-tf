# Creating a NAT Gateway!
resource "aws_nat_gateway" "prod_natgw" { 
  depends_on = [
    aws_eip.ngw-ip
  ]
  # Allocating the Elastic IP to the NAT Gateway!
  allocation_id = aws_eip.ngw-ip.id
  # Associating it in the Public Subnet!
  subnet_id = "${aws_subnet.prod-subnet-public-lb-1a.id}"
  tags = {
    Name = "prod_natgw"
  }
}