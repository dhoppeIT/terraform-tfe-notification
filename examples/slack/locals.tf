locals {
  organization_name  = "dhoppeIT"
  organization_email = "terraform@dhoppe.it"

  workspace_name = "terraform"

  notification_name             = "slack"
  notification_enabled          = true
  notification_destination_type = "slack"
  notification_triggers = [
    "run:needs_attention",
    "run:errored"
  ]
  notification_url = "https://hooks.slack.com/services/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"
}
