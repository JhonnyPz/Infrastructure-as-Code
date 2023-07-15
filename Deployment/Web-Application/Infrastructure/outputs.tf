# Outputs resource Group
output "rg-name" {
  value       = azurerm_resource_group.rg.name
  description = "Nombre del grupo de recursos"
}

output "rg-location" {
  value       = azurerm_resource_group.rg.location
  description = "Ubicación geográfica en la que se crearán los recursos."
}

output "name-plan" {
  value       = azurerm_service_plan.plan.name
  description = "Nombre plan de app services"
}

output "name-web-app" {
  value       = azurerm_linux_web_app.web-app.name
  description = "Nombre de la aplicacion web"
}