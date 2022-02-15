resource "aws_s3_bucket" "com-guestlist-s3-bucket-guestlist-front-build" {
  bucket = "guestlist-front-build"
  acl    = "private"

  force_destroy = false
  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }

  tags = {
    Name = "com.guestlist.s3.bucket.guestlist.front.build"
  }
}

resource "aws_s3_bucket" "com-productionbook-s3-bucket-productionbook-front-build" {
  bucket = "productionbook-front-build"
  acl    = "private"

  force_destroy = false
  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }

  tags = {
    Name = "com.productionbook.s3.bucket.productionbook.front.build"
  }
}

