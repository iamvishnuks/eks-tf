locals {
  cluster_name = "test"
  subnet_ids = ["${aws_subnet.prod-subnet-private-app-1a.id}", "${aws_subnet.prod-subnet-private-db-1a.id}", "${aws_subnet.prod-subnet-private-mon-1a.id}", "${aws_subnet.prod-subnet-private-app-1b.id}", "${aws_subnet.prod-subnet-private-db-1b.id}", "${aws_subnet.prod-subnet-private-mon-1b.id}"]
}