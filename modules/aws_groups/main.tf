resource "aws_iam_group" "this" {
  name = var.group
}

resource "aws_iam_policy" "this" {
  name        = "${var.group}-policy"
  description = "Policy for ${var.group}"
  policy      = data.aws_iam_policy_document.this.json
}

resource "aws_iam_group_policy_attachment" "this" {
  policy_arn = aws_iam_policy.this.arn
  group      = aws_iam_group.this.name
}

resource "aws_iam_user" "this" {
  count = length(var.users)
  name  = var.users[count.index]
}

resource "aws_iam_group_membership" "this" {
  name  = "${var.group}-group-membership"
  group = aws_iam_group.this.name
  users = var.users
}

resource "aws_iam_user_login_profile" "this" {
  for_each                = var.user_login ? { for user, name in aws_iam_user.this : user => name } : {}
  user                    = each.value.name
  pgp_key                 = var.pgp_key
  password_length         = var.password_length
  password_reset_required = var.password_reset_required
}