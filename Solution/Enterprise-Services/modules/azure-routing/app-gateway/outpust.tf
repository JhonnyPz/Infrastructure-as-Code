output "snet-appgt-name" {
  value = azurerm_subnet.snet-appgt.name
}

output "snet-appgt-address" {
  value = azurerm_subnet.snet-appgt.address_prefixes
}

output "app-gateway-name" {
  value = azurerm_application_gateway.app-gateway.name
}

output "ip-appgt-id" {
  value = azurerm_public_ip.ip-appgt.id
}

output "app-gateway-pool-id" {
  value = [for pool in azurerm_application_gateway.app-gateway.backend_address_pool : pool.name == local.backend_address_pool_name ? pool.id : null][0]
}
