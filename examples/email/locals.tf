locals {
  organization_name  = "dhoppeIT"
  organization_email = "terraform@dhoppe.it"

  workspace_name = "terraform"

  notification_name             = "email"
  notification_enabled          = true
  notification_destination_type = "email"
  notification_triggers = [
    "run:needs_attention",
    "run:errored"
  ]
}
