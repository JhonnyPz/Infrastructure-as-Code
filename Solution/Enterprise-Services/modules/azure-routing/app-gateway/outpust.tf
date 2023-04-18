output "snet-appgt-name" {
  value = azurerm_subnet.snet-appgt.name
}

output "snet-appgt-address" {
  value = azurerm_subnet.snet-appgt.address_prefixes
}

output "app-gateway-name" {
  value = azurerm_application_gateway.appgateway.name
}

output "app-gateway-pool-id" {
  value = [for pool in azurerm_application_gateway.appgateway.backend_address_pool : pool.name == local.backend_address_pool_name ? pool.id : null][0]
}
