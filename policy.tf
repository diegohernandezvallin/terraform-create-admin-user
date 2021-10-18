resource "aws_iam_group_policy" "admin_policy" {
  name = "admin_policy"
  group  = aws_iam_group.admin_user_group.name

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect   = "Allow"
        Action = "*"
        Resource = "*"
      },
    ]
  })
}