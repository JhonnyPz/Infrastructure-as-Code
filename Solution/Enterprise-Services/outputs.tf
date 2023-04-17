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

output "vnet-address_space" {
  value       = module.azure-network.vnet-address_space
  description = "description"
}

output "snet-name" {
  value       = module.azure-network.snet-name
  description = "description"
}

output "snet-address_prefixes" {
  value       = module.azure-network.snet-address_prefixes
  description = "description"
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