resource "aws_internet_gateway" "com-guestlist-gateway" {
    vpc_id = aws_vpc.com-guestlist-vpc.id
}
