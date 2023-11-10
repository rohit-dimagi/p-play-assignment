resource "aws_iam_role" "this" {
  name               = var.role_name
  assume_role_policy = jsonencode(var.json_policy)
}
