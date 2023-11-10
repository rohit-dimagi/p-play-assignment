data "aws_iam_policy_document" "this" {
  statement {
    actions   = var.policy_json.actions
    resources = var.policy_json.resources
  }
}