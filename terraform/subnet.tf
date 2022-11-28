resource "aws_subnet" "prod-subnet-public-lb-1a" {
    vpc_id = "${aws_vpc.prod-vpc.id}"
    cidr_block = "10.0.1.0/24"
    map_public_ip_on_launch = "true"
    availability_zone = "ap-south-1a"
    tags = {
        Name = "prod-subnet-public-lb-1a"
    }
}

resource "aws_subnet" "prod-subnet-private-app-1a" {
    vpc_id = "${aws_vpc.prod-vpc.id}"
    cidr_block = "10.0.2.0/24"
    map_public_ip_on_launch = "false" 
    availability_zone = "ap-south-1a"
    tags = {
        Name = "prod-subnet-private-app-1a"
    }
}

resource "aws_subnet" "prod-subnet-private-db-1a" {
    vpc_id = "${aws_vpc.prod-vpc.id}"
    cidr_block = "10.0.3.0/24"
    map_public_ip_on_launch = "false"
    availability_zone = "ap-south-1a"
    tags = {
        Name = "prod-subnet-private-db-1a"
    }
}

resource "aws_subnet" "prod-subnet-private-mon-1a" {
    vpc_id = "${aws_vpc.prod-vpc.id}"
    cidr_block = "10.0.4.0/24"
    map_public_ip_on_launch = "false"
    availability_zone = "ap-south-1a"
    tags = {
        Name = "prod-subnet-private-mon-1a"
    }
}

resource "aws_subnet" "prod-subnet-public-lb-1b" {
    vpc_id = "${aws_vpc.prod-vpc.id}"
    cidr_block = "10.0.5.0/24"
    map_public_ip_on_launch = "true"
    availability_zone = "ap-south-1b"
    tags = {
        Name = "prod-subnet-public-lb-1b"
    }
}

resource "aws_subnet" "prod-subnet-private-app-1b" {
    vpc_id = "${aws_vpc.prod-vpc.id}"
    cidr_block = "10.0.6.0/24"
    map_public_ip_on_launch = "false" 
    availability_zone = "ap-south-1b"
    tags = {
        Name = "prod-subnet-private-app-1a"
    }
}

resource "aws_subnet" "prod-subnet-private-db-1b" {
    vpc_id = "${aws_vpc.prod-vpc.id}"
    cidr_block = "10.0.7.0/24"
    map_public_ip_on_launch = "false"
    availability_zone = "ap-south-1b"
    tags = {
        Name = "prod-subnet-private-db-1b"
    }
}

resource "aws_subnet" "prod-subnet-private-mon-1b" {
    vpc_id = "${aws_vpc.prod-vpc.id}"
    cidr_block = "10.0.8.0/24"
    map_public_ip_on_launch = "false"
    availability_zone = "ap-south-1b"
    tags = {
        Name = "prod-subnet-private-mon-1b"
    }
}