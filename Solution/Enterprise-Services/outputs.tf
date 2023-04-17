output "rg-name" {
  value       = azurerm_resource_group.rg.name
  description = "output name resource group"
}

output "rg-location" {
  value       = azurerm_resource_group.rg.location
  description = "output location resource group"
}
