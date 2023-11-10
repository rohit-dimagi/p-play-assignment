module "groups" {
  source = "../../modules/aws_groups"

  for_each = local.group_resources["groups"]

  group      = each.key
  users      = each.value.users
  user_login = each.value.user_login

  policy_json = {
    actions   = each.value.policy.actions
    resources = each.value.policy.resources
  }
}

module "role" {
  source = "../../modules/aws_roles"

  for_each = local.group_resources["roles"]

  role_name   = each.key
  json_policy = each.value.policy
}
