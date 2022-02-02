output "notification_id" {
  value       = try(module.tfe_notification.id, null)
  description = "The ID of the notification configuration"
}
