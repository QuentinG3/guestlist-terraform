resource "aws_security_group" "com-guestlist-sgroup-lb" {
    name = "com.guestlist.sgroup.lb"
    description = "Security group for lb"
    vpc_id = aws_vpc.com-guestlist-vpc.id
    ingress {
        protocol = "6"
        from_port = 80
        to_port = 80
        cidr_blocks = ["0.0.0.0/0"]
    }
    ingress {
        protocol = "6"
        from_port = 443
        to_port = 443
        cidr_blocks = ["0.0.0.0/0"]
    }
    egress {
        protocol = "-1"
        from_port = 0
        to_port = 0
        cidr_blocks = ["0.0.0.0/0"]
    }
}

resource "aws_security_group" "com-guestlist-sgroup-rds-from-swarm-vpc" {
    name = "com.guestlist.sgroup.rds.from.vpc"
    description = "Security group allow connections to rds from vpc"
    vpc_id = aws_vpc.com-guestlist-vpc.id
    ingress {
        protocol = "6"
        from_port = 5432
        to_port = 5432
        cidr_blocks = [var.vpc_guestlist["cidr"], "0.0.0.0/0"]
    }
    egress {
        protocol = "-1"
        from_port = 0
        to_port = 0
        cidr_blocks = ["0.0.0.0/0"]
    }
}

resource "aws_security_group" "com-guestlist-sgroup-target-api" {
    name = "com.guestlist.sgroup.target.api"
    description = "Security group target"
    vpc_id = aws_vpc.com-guestlist-vpc.id

    ingress {
        protocol = "6"
        from_port = 8080
        to_port = 8080
        cidr_blocks = [var.vpc_guestlist["cidr"]]
    }
    egress {
        protocol = "-1"
        from_port = 0
        to_port = 0
        cidr_blocks = ["0.0.0.0/0"]
    }
}

# resource "aws_security_group" "com-guestlist-sgroup-target-backoffice" {
#     name = "com.guestlist.sgroup.target.backoffice"
#     description = "Security group target"
#     vpc_id = "${aws_vpc.com-guestlist-vpc.id}"

#     ingress {
#         protocol = "6"
#         from_port = 80
#         to_port = 80
#         cidr_blocks = ["${var.vpc_guestlist["cidr"]}"]
#     }
#     egress {
#         protocol = "-1"
#         from_port = 0
#         to_port = 0
#         cidr_blocks = ["0.0.0.0/0"]
#     }
# }
