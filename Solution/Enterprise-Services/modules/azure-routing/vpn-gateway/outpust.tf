output "snet-vpngt-name" {
  value = azurerm_subnet.snet-vpngt.name
}

output "snet-vpngt-address" {
  value = azurerm_subnet.snet-vpngt.address_prefixes
}

output "vpn-gateway-name" {
  value = azurerm_virtual_network_gateway.vpngateway.name
}