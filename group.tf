resource "aws_iam_group" "admin_user_group" {
  name = var.ADMIN_USER_GROUP
  path = "/users/"
}

resource "aws_iam_group_membership" "admins" {
  name = "admin-group-membership"
  group = aws_iam_group.admin_user_group.name

  users = [
    aws_iam_user.admin.name
  ]
}