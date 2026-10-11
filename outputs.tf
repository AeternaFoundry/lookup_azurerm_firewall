output "firewall_lookup_id" {
  description = "Map of id values across all firewall_lookup, keyed the same as var.firewall_lookup"
  value       = { for k, v in data.azurerm_firewall.firewall_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "firewall_lookup_dns_proxy_enabled" {
  description = "Map of dns_proxy_enabled values across all firewall_lookup, keyed the same as var.firewall_lookup"
  value       = { for k, v in data.azurerm_firewall.firewall_lookup : k => v.dns_proxy_enabled if v.dns_proxy_enabled != null }
}
output "firewall_lookup_dns_servers" {
  description = "Map of dns_servers values across all firewall_lookup, keyed the same as var.firewall_lookup"
  value       = { for k, v in data.azurerm_firewall.firewall_lookup : k => v.dns_servers if v.dns_servers != null && length(v.dns_servers) > 0 }
}
output "firewall_lookup_firewall_policy_id" {
  description = "Map of firewall_policy_id values across all firewall_lookup, keyed the same as var.firewall_lookup"
  value       = { for k, v in data.azurerm_firewall.firewall_lookup : k => v.firewall_policy_id if v.firewall_policy_id != null && length(v.firewall_policy_id) > 0 }
}
output "firewall_lookup_ip_configuration" {
  description = "Map of ip_configuration values across all firewall_lookup, keyed the same as var.firewall_lookup"
  value       = { for k, v in data.azurerm_firewall.firewall_lookup : k => v.ip_configuration if v.ip_configuration != null && length(v.ip_configuration) > 0 }
}
output "firewall_lookup_location" {
  description = "Map of location values across all firewall_lookup, keyed the same as var.firewall_lookup"
  value       = { for k, v in data.azurerm_firewall.firewall_lookup : k => v.location if v.location != null && length(v.location) > 0 }
}
output "firewall_lookup_management_ip_configuration" {
  description = "Map of management_ip_configuration values across all firewall_lookup, keyed the same as var.firewall_lookup"
  value       = { for k, v in data.azurerm_firewall.firewall_lookup : k => v.management_ip_configuration if v.management_ip_configuration != null && length(v.management_ip_configuration) > 0 }
}
output "firewall_lookup_name" {
  description = "Map of name values across all firewall_lookup, keyed the same as var.firewall_lookup"
  value       = { for k, v in data.azurerm_firewall.firewall_lookup : k => v.name if v.name != null && length(v.name) > 0 }
}
output "firewall_lookup_resource_group_name" {
  description = "Map of resource_group_name values across all firewall_lookup, keyed the same as var.firewall_lookup"
  value       = { for k, v in data.azurerm_firewall.firewall_lookup : k => v.resource_group_name if v.resource_group_name != null && length(v.resource_group_name) > 0 }
}
output "firewall_lookup_sku_name" {
  description = "Map of sku_name values across all firewall_lookup, keyed the same as var.firewall_lookup"
  value       = { for k, v in data.azurerm_firewall.firewall_lookup : k => v.sku_name if v.sku_name != null && length(v.sku_name) > 0 }
}
output "firewall_lookup_sku_tier" {
  description = "Map of sku_tier values across all firewall_lookup, keyed the same as var.firewall_lookup"
  value       = { for k, v in data.azurerm_firewall.firewall_lookup : k => v.sku_tier if v.sku_tier != null && length(v.sku_tier) > 0 }
}
output "firewall_lookup_tags" {
  description = "Map of tags values across all firewall_lookup, keyed the same as var.firewall_lookup"
  value       = { for k, v in data.azurerm_firewall.firewall_lookup : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "firewall_lookup_threat_intel_mode" {
  description = "Map of threat_intel_mode values across all firewall_lookup, keyed the same as var.firewall_lookup"
  value       = { for k, v in data.azurerm_firewall.firewall_lookup : k => v.threat_intel_mode if v.threat_intel_mode != null && length(v.threat_intel_mode) > 0 }
}
output "firewall_lookup_virtual_hub" {
  description = "Map of virtual_hub values across all firewall_lookup, keyed the same as var.firewall_lookup"
  value       = { for k, v in data.azurerm_firewall.firewall_lookup : k => v.virtual_hub if v.virtual_hub != null && length(v.virtual_hub) > 0 }
}
output "firewall_lookup_zones" {
  description = "Map of zones values across all firewall_lookup, keyed the same as var.firewall_lookup"
  value       = { for k, v in data.azurerm_firewall.firewall_lookup : k => v.zones if v.zones != null && length(v.zones) > 0 }
}

