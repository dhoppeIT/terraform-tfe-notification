resource "tfe_notification_configuration" "default" {
  name             = var.name
  enabled          = var.enabled
  destination_type = var.destination_type
  email_user_ids   = var.email_user_ids
  email_addresses  = var.email_addresses
  token            = var.token
  triggers         = var.triggers
  url              = var.url
  workspace_id     = var.workspace_id
}
