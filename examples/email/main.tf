module "tfe_organization" {
  source  = "dhoppeIT/organization/tfe"
  version = "~> 0.1"

  name  = local.organization_name
  email = local.organization_email
}

module "tfe_workspace" {
  source  = "dhoppeIT/workspace/tfe"
  version = "~> 0.2"

  name         = local.workspace_name
  organization = module.tfe_organization.name
}

module "tfe_notification" {
  source  = "dhoppeIT/notification/tfe"
  version = "~> 0.1"

  name             = local.notification_name
  enabled          = local.notification_enabled
  destination_type = local.notification_destination_type
  email_user_ids   = module.tfe_organization.id
  triggers         = local.notification_triggers
  workspace_id     = module.tfe_workspace.id
}
