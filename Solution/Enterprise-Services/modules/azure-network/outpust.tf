output "snet-id" {
  value = azurerm_subnet.snet.id
}

output "vnet-name" {
  value = azurerm_virtual_network.vnet.name
}

output "vnet-address_space" {
  value = azurerm_virtual_network.vnet.address_space
}

output "snet-name" {
  value = azurerm_subnet.snet.name
}

output "snet-address_prefixes" {
  value = azurerm_subnet.snet.address_prefixes
}