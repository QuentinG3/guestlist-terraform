resource "aws_route" "com-guestlist-route-1-public" {
    route_table_id = aws_route_table.com-guestlist-rtable-public.id
    destination_cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.com-guestlist-gateway.id
}
