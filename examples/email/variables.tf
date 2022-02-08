variable "token" {
  type        = string
  default     = null
  description = "The token used to authenticate with Terraform Cloud/Enterprise"
  sensitive   = true
}
