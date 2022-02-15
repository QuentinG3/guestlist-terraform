# resource "aws_db_subnet_group" "com-guestlist-db-subnet-group" {
#   name        = "guestlist-db-subnet-group"
#   description = "Guestlist database subnet group"
#   subnet_ids  = [
#     "${aws_subnet.com-guestlist-subnet-public.0.id}",
#     "${aws_subnet.com-guestlist-subnet-public.1.id}",
#     "${aws_subnet.com-guestlist-subnet-public.2.id}"
#   ]
# }
