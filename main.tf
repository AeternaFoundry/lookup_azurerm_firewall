data "azurerm_firewall" "firewall_lookup" {
  for_each = var.firewall_lookup

  name                = each.value.name
  resource_group_name = each.value.resource_group_name
  dns_proxy_enabled   = each.value.dns_proxy_enabled
}

