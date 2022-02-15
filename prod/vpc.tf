# VPC
resource "aws_vpc" "com-guestlist-vpc" {
    cidr_block = var.vpc_guestlist["cidr"]
    enable_dns_support = true
    enable_dns_hostnames = true
    tags = {
      Name = "com.guestlist.vpc"
    }
}
