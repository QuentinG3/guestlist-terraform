resource "aws_route_table" "com-guestlist-rtable-public" {
    vpc_id = aws_vpc.com-guestlist-vpc.id
}
