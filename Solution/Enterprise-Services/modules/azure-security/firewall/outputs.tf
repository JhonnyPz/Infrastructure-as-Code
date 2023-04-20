output "snet-fw-name" {
  value = azurerm_subnet.snet-fw.name
}

output "snet-fw-address" {
  value = azurerm_subnet.snet-fw.address_prefixes
}

output "firewall-policy" {
  value = azurerm_firewall_policy.fw-policy.name
}

output "firewall" {
  value = azurerm_firewall.fw.name
}