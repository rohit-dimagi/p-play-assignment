
resource "aws_iam_role" "roleC" {
  name = "roleC"

  assume_role_policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Action = "sts:AssumeRole",
        Effect = "Allow",
        Principal = {
          AWS = "arn:aws:iam::000000000000:root"
        }
      }
    ]
  })
}

resource "aws_iam_policy" "full_s3_access_policy" {
  name        = "FullS3AccessPolicy"
  description = "Policy allowing full S3 access"

  policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Action = "s3:*",
        Effect = "Allow",
        Resource = [
          "arn:aws:s3:::aws-test-bucket",
          "arn:aws:s3:::aws-test-bucket/*"
        ]
      }
    ]
  })
}

resource "aws_iam_role_policy_attachment" "full_s3_access_attachment" {
  policy_arn = aws_iam_policy.full_s3_access_policy.arn
  role       = aws_iam_role.roleC.name
}