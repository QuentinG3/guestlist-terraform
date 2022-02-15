# # Test
# resource "aws_db_instance" "com-guestlist-db-instance" {
#   identifier           = "guestlist"
#   allocated_storage    = "20"
#   storage_type         = "gp2"
#   engine               = "postgres"
#   engine_version       = "10.13"
#   instance_class       = "db.t2.micro"
#   name                 = "${var.database["database"]}"
#   username             = "${var.database["username"]}"
#   password             = "${var.database["password"]}"
#   skip_final_snapshot  = "false"
#   db_subnet_group_name = "${aws_db_subnet_group.com-guestlist-db-subnet-group.id}"
#   vpc_security_group_ids = ["${aws_security_group.com-guestlist-sgroup-rds-from-swarm-vpc.id}"]
#   final_snapshot_identifier = "final-snapshot-guestlist-test2"
#   deletion_protection = "true"
#   publicly_accessible  = "true"
#   apply_immediately = "true"
#   auto_minor_version_upgrade = "true"
#   backup_retention_period = "14"
#   backup_window = "01:00-01:30"
#   maintenance_window = "Mon:03:00-Mon:03:30"
#   multi_az = "false"
# }
