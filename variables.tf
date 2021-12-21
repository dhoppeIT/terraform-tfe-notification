variable "name" {
  type        = string
  description = "Name of the notification configuration"
}

variable "destination_type" {
  type        = string
  description = "The type of notification configuration payload to send"
}

variable "email_addresses" {
  type        = list(string)
  default     = null
  description = "A list of email addresses"
}

variable "email_user_ids" {
  type        = list(string)
  default     = null
  description = "A list of user IDs"
}

variable "enabled" {
  type        = bool
  default     = false
  description = "Whether the notification configuration should be enabled or not"
}

variable "token" {
  type        = string
  default     = null
  description = "A write-only secure token for the notification configuration"
}

variable "triggers" {
  type        = list(string)
  default     = []
  description = "The array of triggers for which this notification configuration will send notifications"
}

variable "url" {
  type        = string
  description = "The HTTP or HTTPS URL of the notification configuration where notification requests will be made"
}

variable "workspace_id" {
  type        = string
  description = "The id of the workspace that owns the notification configuration"
}
