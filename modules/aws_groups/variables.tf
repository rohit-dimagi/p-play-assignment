variable "group" {
  type        = string
  description = "Name of the IAM group"
}

variable "policy_json" {
  type = object({
    resources = list(string)
    actions   = list(string)
  })
}

variable "users" {
  type = list(string)
}

variable "user_login" {
  type    = bool
  default = true
}

variable "pgp_key" {
  type        = string
  description = "A base-64 encoded PGP public key"
  default     = null
}

variable "password_length" {
  type        = number
  description = "The length of the generated password on resource creation"
  default     = 20
}

variable "password_reset_required" {
  type        = bool
  description = "Whether the user should be forced to reset the generated password on resource creation."
  default     = true
}
