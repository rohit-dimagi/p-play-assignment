variable "region" {
  type        = string
  default     = "ap-south-1"
  description = "AWS region Name"
}

variable "access_key" {
  type        = string
  description = "AWS Access Key"
}

variable "secret_key" {
  type        = string
  description = "AWS Secret Access key"
}