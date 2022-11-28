resource "aws_eip" "ngw-ip" {
  depends_on = [
    aws_route_table_association.prod-crta-subnet-public-lb-1a
  ]
  vpc = true
}