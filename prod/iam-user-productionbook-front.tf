resource "aws_iam_user" "com-productionbook-iam-user-productionbook-front-build" {
  name = "productionbook-front-build"
  path = "/"
  tags = {
    tag-key = "com.productionbook.iam.user.productionbook.build.front"
  }
}

resource "aws_iam_access_key" "com-productionbook-iam-access-key-productionbook-front-build" {
  user = aws_iam_user.com-productionbook-iam-user-productionbook-front-build.name
}

data "aws_iam_policy_document" "com-productionbook-iam-policy-document-productionbook-front-build" {
  statement {
    actions = [
      "s3:*",
    ]

    resources = [
      aws_s3_bucket.com-productionbook-s3-bucket-productionbook-front-build.arn,
      "${aws_s3_bucket.com-productionbook-s3-bucket-productionbook-front-build.arn}/*",
    ]
  }
}

resource "aws_iam_policy" "com-productionbook-iam-user-policy-productionbook-front-build" {
  name   = "productionbook-front-build-policy"
  policy = data.aws_iam_policy_document.com-productionbook-iam-policy-document-productionbook-front-build.json
}

resource "aws_iam_user_policy_attachment" "com-productionbook-iam-user-policy-attachment-productionbook-front-build" {
  user       = aws_iam_user.com-productionbook-iam-user-productionbook-front-build.name
  policy_arn = aws_iam_policy.com-productionbook-iam-user-policy-productionbook-front-build.arn
}

output "productionbook-front-build-user-access-key" {
  value = aws_iam_access_key.com-productionbook-iam-access-key-productionbook-front-build.id
}

output "productionbook-front-build-user-secret-key" {
  value = aws_iam_access_key.com-productionbook-iam-access-key-productionbook-front-build.secret
  sensitive = true
}

