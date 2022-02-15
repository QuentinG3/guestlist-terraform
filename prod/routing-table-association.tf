resource "aws_route_table_association" "com-guestlist-rtable-assoc-public" {
    count = "3"
    subnet_id = aws_subnet.com-guestlist-subnet-public.*.id[count.index]
    route_table_id = aws_route_table.com-guestlist-rtable-public.id
}
