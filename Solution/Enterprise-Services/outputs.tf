# Outputs resource Group
output "rg-name" {
  value       = azurerm_resource_group.rg.name
  description = "output name resource group"
}

output "rg-location" {
  value       = azurerm_resource_group.rg.location
  description = "output location resource group"
}

# Outputs Virtual Network and Subnet
output "vnet-name" {
  value       = module.azure-network.vnet-name
  description = "description"
}

output "vnet-address-space" {
  value       = module.azure-network.vnet-address
  description = "description"
}

output "snet-def-name" {
  value       = module.azure-network.snet-def-name
  description = "description"
}

output "snet-def-address" {
  value       = module.azure-network.snet-def-address
  description = "description"
}

# Outputs Application Gateway and VPN Gateway
output "snet-appgt-name" {
  value = module.azure-routing-appgt.snet-appgt-name
}

output "snet-appgt-address" {
  value = module.azure-routing-appgt.snet-appgt-address
}

output "app-gateway-name" {
  value = module.azure-routing-appgt.app-gateway-name
}

# Outputs Virtual Machine Scale Set VMSS
output "vmss-name" {
  value       = module.azure-app.vmss-name
  description = "description"
}

output "vmss-instances" {
  value       = module.azure-app.vmss-instances
  description = "description"
}

output "vmss-user" {
  value       = module.azure-app.vmss-user
  description = "description"
}

output "vmss-password" {
  value       = module.azure-app.vmss-password
  sensitive   = true
  description = "description"
}