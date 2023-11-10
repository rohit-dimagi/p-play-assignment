variable "role_name" {
  type        = string
  description = "Role Name For AWS"
}

variable "json_policy" {
  type        = any
  description = "Json structure of supported IAM Policy"
}