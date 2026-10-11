variable "firewall_lookup" {
  description = <<EOT
Map of firewall_lookup, attributes below
Required:
    - name
    - resource_group_name
Optional:
    - dns_proxy_enabled
EOT

  type = map(object({
    name                = string
    resource_group_name = string
    dns_proxy_enabled   = optional(bool)
  }))
  validation {
    condition = alltrue([
      for k, v in var.firewall_lookup : (
        length(v.resource_group_name) <= 90
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) > 90]"
  }
  validation {
    condition = alltrue([
      for k, v in var.firewall_lookup : (
        !endswith(v.resource_group_name, ".")
      )
    ])
    error_message = "[from resourcegroups.ValidateName: must not end with \".\"]"
  }
  validation {
    condition = alltrue([
      for k, v in var.firewall_lookup : (
        length(v.resource_group_name) != 0
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) == 0]"
  }
  validation {
    condition = alltrue([
      for k, v in var.firewall_lookup : (
        alltrue([for x in v.zones : length(x) > 0])
      )
    ])
    error_message = "must not be empty"
  }
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

