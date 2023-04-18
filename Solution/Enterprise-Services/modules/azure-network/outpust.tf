output "vnet-name" {
  value = azurerm_virtual_network.vnet.name
}

output "vnet-address" {
  value = azurerm_virtual_network.vnet.address_space
}

output "snet-vmss-name" {
  value = azurerm_subnet.snet-vmss.name
}

output "snet-vmss-address" {
  value = azurerm_subnet.snet-vmss.address_prefixes
}

output "snet-vmss-id" {
  value = azurerm_subnet.snet-vmss.id
}