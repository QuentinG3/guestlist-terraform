resource "aws_iam_user" "com-inventory-iam-user-inventory-images-test" {
  name = "inventory-images-test"
  path = "/"
  tags = {
    tag-key = "com.inventory.iam.user.inventory.images.test"
  }
}

resource "aws_iam_access_key" "com-inventory-iam-access-key-inventory-images-test" {
  user = aws_iam_user.com-inventory-iam-user-inventory-images-test.name
}

data "aws_iam_policy_document" "com-inventory-iam-policy-document-inventory-images-test" {
  statement {
    actions = [
      "s3:*",
    ]

    resources = [
      aws_s3_bucket.com-inventory-s3-bucket-inventory-images-test.arn,
      "${aws_s3_bucket.com-inventory-s3-bucket-inventory-images-test.arn}/*",
    ]
  }
}

resource "aws_iam_policy" "com-inventory-iam-user-policy-inventory-images-test" {
  name   = "inventory-images-test-policy"
  policy = data.aws_iam_policy_document.com-inventory-iam-policy-document-inventory-images-test.json
}

resource "aws_iam_user_policy_attachment" "com-inventory-iam-user-policy-attachment-inventory-images-test" {
  user       = aws_iam_user.com-inventory-iam-user-inventory-images-test.name
  policy_arn = aws_iam_policy.com-inventory-iam-user-policy-inventory-images-test.arn
}

output "inventory-images-test-user-access-key" {
  value = aws_iam_access_key.com-inventory-iam-access-key-inventory-images-test.id
}

output "inventory-images-test-user-secret-key" {
  value = aws_iam_access_key.com-inventory-iam-access-key-inventory-images-test.secret
  sensitive = true
}

resource "aws_iam_user" "com-inventory-iam-user-inventory-images-prod" {
  name = "inventory-images-prod"
  path = "/"
  tags = {
    tag-key = "com.inventory.iam.user.inventory.images.prod"
  }
}

resource "aws_iam_access_key" "com-inventory-iam-access-key-inventory-images-prod" {
  user = aws_iam_user.com-inventory-iam-user-inventory-images-prod.name
}

data "aws_iam_policy_document" "com-inventory-iam-policy-document-inventory-images-prod" {
  statement {
    actions = [
      "s3:*",
    ]

    resources = [
      aws_s3_bucket.com-inventory-s3-bucket-inventory-images-prod.arn,
      "${aws_s3_bucket.com-inventory-s3-bucket-inventory-images-prod.arn}/*",
    ]
  }
}

resource "aws_iam_policy" "com-inventory-iam-user-policy-inventory-images-prod" {
  name   = "inventory-images-prod-policy"
  policy = data.aws_iam_policy_document.com-inventory-iam-policy-document-inventory-images-prod.json
}

resource "aws_iam_user_policy_attachment" "com-inventory-iam-user-policy-attachment-inventory-images-prod" {
  user       = aws_iam_user.com-inventory-iam-user-inventory-images-prod.name
  policy_arn = aws_iam_policy.com-inventory-iam-user-policy-inventory-images-prod.arn
}

output "inventory-images-prod-user-access-key" {
  value = aws_iam_access_key.com-inventory-iam-access-key-inventory-images-prod.id
}

output "inventory-images-prod-user-secret-key" {
  value = aws_iam_access_key.com-inventory-iam-access-key-inventory-images-prod.secret
  sensitive = true
}

