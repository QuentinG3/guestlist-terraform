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

resource "aws_s3_bucket" "com-inventory-s3-bucket-inventory-front-build" {
  bucket = "inventory-front-build"
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
    Name = "com.inventory.s3.bucket.inventory.front.build"
  }
}

resource "aws_s3_bucket" "com-inventory-s3-bucket-inventory-images-test" {
  bucket = "qeerio-inventory-images-test"
  acl    = "private"

  cors_rule {
    allowed_headers = ["*"]
    allowed_methods = ["GET"]
    allowed_origins = ["*"]
    max_age_seconds = 3000
  }

  force_destroy = false
  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }

  tags = {
    Name = "com.inventory.s3.bucket.inventory.images.test"
  }
}

resource "aws_s3_bucket" "com-inventory-s3-bucket-inventory-images-prod" {
  bucket = "qeerio-inventory-images-prod"
  acl    = "private"

  cors_rule {
    allowed_headers = ["*"]
    allowed_methods = ["GET"]
    allowed_origins = ["*"]
    max_age_seconds = 3000
  }

  force_destroy = false
  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }

  tags = {
    Name = "com.inventory.s3.bucket.inventory.images.prod"
  }
}

