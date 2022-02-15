resource "aws_iam_user" "com-guestlist-iam-user-guestlist-front-build" {
  name = "guestlist-front-build"
  path = "/"
  tags = {
    tag-key = "com.guestlist.iam.user.guestlist.build.front"
  }
}

resource "aws_iam_access_key" "com-guestlist-iam-access-key-guestlist-front-build" {
  user = aws_iam_user.com-guestlist-iam-user-guestlist-front-build.name
}

data "aws_iam_policy_document" "com-guestlist-iam-policy-document-guestlist-front-build" {
  statement {
    actions = [
      "s3:*",
    ]

    resources = [
      aws_s3_bucket.com-guestlist-s3-bucket-guestlist-front-build.arn,
      "${aws_s3_bucket.com-guestlist-s3-bucket-guestlist-front-build.arn}/*",
    ]
  }
}

resource "aws_iam_policy" "com-guestlist-iam-user-policy-guestlist-front-build" {
  name   = "guestlist-front-build-policy"
  policy = data.aws_iam_policy_document.com-guestlist-iam-policy-document-guestlist-front-build.json
}

resource "aws_iam_user_policy_attachment" "com-guestlist-iam-user-policy-attachment-guestlist-front-build" {
  user       = aws_iam_user.com-guestlist-iam-user-guestlist-front-build.name
  policy_arn = aws_iam_policy.com-guestlist-iam-user-policy-guestlist-front-build.arn
}

output "guestlist-front-build-user-access-key" {
  value = aws_iam_access_key.com-guestlist-iam-access-key-guestlist-front-build.id
}

output "guestlist-front-build-user-secret-key" {
  value = aws_iam_access_key.com-guestlist-iam-access-key-guestlist-front-build.secret
  sensitive = true
}

