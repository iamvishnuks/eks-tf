// Public route table
resource "aws_route_table" "prod-public-crt" {
    vpc_id = "${aws_vpc.prod-vpc.id}"
    
    route {
        //associated subnet can reach everywhere
        cidr_block = "0.0.0.0/0" 
        //CRT uses this IGW to reach internet
        gateway_id = "${aws_internet_gateway.prod-igw.id}" 
    }
    
    tags = {
        Name = "prod-public-crt"
    }
}

# Creating a Route Table for the Nat Gateway!
resource "aws_route_table" "prod-private-crt" {
  depends_on = [
    aws_nat_gateway.prod_natgw
  ]

  vpc_id = "${aws_vpc.prod-vpc.id}"

  route {
    cidr_block = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.prod_natgw.id
  }

  tags = {
    Name = "Route Table for NAT Gateway"
  }
}

# Creating an Route Table Association of the NAT Gateway route 
# table with the Private Subnet!
resource "aws_route_table_association" "prod-crta-subnet-private-app-1a" {
  depends_on = [
    aws_route_table.prod-private-crt
  ]

#  Private Subnet ID for adding this route table to the DHCP server of Private subnet!
  subnet_id      = "${aws_subnet.prod-subnet-private-app-1a.id}"

# Route Table ID
  route_table_id = aws_route_table.prod-private-crt.id
}

resource "aws_route_table_association" "prod-crta-subnet-private-app-1b" {
  depends_on = [
    aws_route_table.prod-private-crt
  ]

#  Private Subnet ID for adding this route table to the DHCP server of Private subnet!
  subnet_id      = "${aws_subnet.prod-subnet-private-app-1b.id}"

# Route Table ID
  route_table_id = aws_route_table.prod-private-crt.id
}

resource "aws_route_table_association" "prod-crta-subnet-private-db-1a" {
  depends_on = [
    aws_route_table.prod-private-crt
  ]

#  Private Subnet ID for adding this route table to the DHCP server of Private subnet!
  subnet_id      = "${aws_subnet.prod-subnet-private-db-1a.id}"

# Route Table ID
  route_table_id = aws_route_table.prod-private-crt.id
}

resource "aws_route_table_association" "prod-crta-subnet-private-db-1b" {
  depends_on = [
    aws_route_table.prod-private-crt
  ]

#  Private Subnet ID for adding this route table to the DHCP server of Private subnet!
  subnet_id      = "${aws_subnet.prod-subnet-private-db-1b.id}"

# Route Table ID
  route_table_id = aws_route_table.prod-private-crt.id
}

resource "aws_route_table_association" "prod-crta-subnet-private-mon-1a" {
  depends_on = [
    aws_route_table.prod-private-crt
  ]

#  Private Subnet ID for adding this route table to the DHCP server of Private subnet!
  subnet_id      = "${aws_subnet.prod-subnet-private-mon-1a.id}"

# Route Table ID
  route_table_id = aws_route_table.prod-private-crt.id
}

resource "aws_route_table_association" "prod-crta-subnet-private-mon-1b" {
  depends_on = [
    aws_route_table.prod-private-crt
  ]

#  Private Subnet ID for adding this route table to the DHCP server of Private subnet!
  subnet_id      = "${aws_subnet.prod-subnet-private-mon-1b.id}"

# Route Table ID
  route_table_id = aws_route_table.prod-private-crt.id
}

// Route table association for public subnets
resource "aws_route_table_association" "prod-crta-subnet-public-lb-1a"{ 
    subnet_id = "${aws_subnet.prod-subnet-public-lb-1a.id}"
    route_table_id = "${aws_route_table.prod-public-crt.id}"
}

resource "aws_route_table_association" "prod-crta-subnet-public-lb-1b"{ 
    subnet_id = "${aws_subnet.prod-subnet-public-lb-1b.id}"
    route_table_id = "${aws_route_table.prod-public-crt.id}"
}