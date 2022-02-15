resource "aws_subnet" "com-guestlist-subnet-public" {
    count = "3"
    vpc_id = aws_vpc.com-guestlist-vpc.id
    cidr_block = cidrsubnet(var.vpc_guestlist["cidr"], 8, count.index)
    availability_zone = "${var.region}${lookup(var.number_letter_map, count.index)}"
}
