# terraform-tfe-notification

Terraform module to manage the following Terraform Cloud/Enterprise resource:

* tfe_notification_configuration

## Graph

<img alt="Graph" src="https://github.com/dhoppeIT/terraform-tfe-notification/blob/main/rover.svg?raw=true" width="100%" height="100%">

## Usage

Copy and paste into your Terraform configuration, insert the variables and run ```terraform init```:

```hcl
module "tfe_organization" {
  source  = "dhoppeIT/organization/tfe"
  version = "~> 0.1"

  name  = "dhoppeIT"
  email = "terraform@dhoppe.it"
}

module "tfe_workspace" {
  source  = "dhoppeIT/workspace/tfe"
  version = "~> 0.2"

  name         = "terraform"
  organization = module.tfe_organization.name
}

module "tfe_notification" {
  source  = "dhoppeIT/notification/tfe"
  version = "~> 0.1"

  name             = "slack"
  enabled          = true
  destination_type = "slack"
  triggers = [
    "run:needs_attention",
    "run:errored"
  ]
  url          = "https://hooks.slack.com/services/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"
  workspace_id = module.tfe_workspace.id
}
```

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_tfe"></a> [tfe](#requirement\_tfe) | ~> 0.26 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_tfe"></a> [tfe](#provider\_tfe) | 0.38.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [tfe_notification_configuration.default](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/notification_configuration) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_destination_type"></a> [destination\_type](#input\_destination\_type) | The type of notification configuration payload to send | `string` | n/a | yes |
| <a name="input_email_addresses"></a> [email\_addresses](#input\_email\_addresses) | A list of email addresses | `list(string)` | `null` | no |
| <a name="input_email_user_ids"></a> [email\_user\_ids](#input\_email\_user\_ids) | A list of user IDs | `list(string)` | `null` | no |
| <a name="input_enabled"></a> [enabled](#input\_enabled) | Whether the notification configuration should be enabled or not | `bool` | `false` | no |
| <a name="input_name"></a> [name](#input\_name) | Name of the notification configuration | `string` | n/a | yes |
| <a name="input_token"></a> [token](#input\_token) | A write-only secure token for the notification configuration | `string` | `null` | no |
| <a name="input_triggers"></a> [triggers](#input\_triggers) | The array of triggers for which this notification configuration will send notifications | `list(string)` | `[]` | no |
| <a name="input_url"></a> [url](#input\_url) | The HTTP or HTTPS URL of the notification configuration where notification requests will be made | `string` | `null` | no |
| <a name="input_workspace_id"></a> [workspace\_id](#input\_workspace\_id) | The id of the workspace that owns the notification configuration | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | The ID of the notification configuration |
<!-- END_TF_DOCS -->

## Authors

Created and maintained by [Dennis Hoppe](https://github.com/dhoppeIT/).

## License

Apache 2 licensed. See [LICENSE](https://github.com/dhoppeIT/terraform-tfe-notification/blob/main/LICENSE) for full details.
