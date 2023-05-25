resource "aws_iam_user" "com-inventory-iam-user-inventory-front-build" {
  name = "inventory-front-build"
  path = "/"
  tags = {
    tag-key = "com.inventory.iam.user.inventory.build.front"
  }
}

resource "aws_iam_access_key" "com-inventory-iam-access-key-inventory-front-build" {
  user = aws_iam_user.com-inventory-iam-user-inventory-front-build.name
}

data "aws_iam_policy_document" "com-inventory-iam-policy-document-inventory-front-build" {
  statement {
    actions = [
      "s3:*",
    ]

    resources = [
      aws_s3_bucket.com-inventory-s3-bucket-inventory-front-build.arn,
      "${aws_s3_bucket.com-inventory-s3-bucket-inventory-front-build.arn}/*",
    ]
  }
}

resource "aws_iam_policy" "com-inventory-iam-user-policy-inventory-front-build" {
  name   = "inventory-front-build-policy"
  policy = data.aws_iam_policy_document.com-inventory-iam-policy-document-inventory-front-build.json
}

resource "aws_iam_user_policy_attachment" "com-inventory-iam-user-policy-attachment-inventory-front-build" {
  user       = aws_iam_user.com-inventory-iam-user-inventory-front-build.name
  policy_arn = aws_iam_policy.com-inventory-iam-user-policy-inventory-front-build.arn
}

output "inventory-front-build-user-access-key" {
  value = aws_iam_access_key.com-inventory-iam-access-key-inventory-front-build.id
}

output "inventory-front-build-user-secret-key" {
  value = aws_iam_access_key.com-inventory-iam-access-key-inventory-front-build.secret
  sensitive = true
}

