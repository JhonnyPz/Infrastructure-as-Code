output "vmss-name" {
  value = azurerm_windows_virtual_machine_scale_set.vmss.name
}

output "vmss-instances" {
  value = azurerm_windows_virtual_machine_scale_set.vmss.instances
}

output "vmss-user" {
  value = azurerm_windows_virtual_machine_scale_set.vmss.admin_username
}

output "vmss-password" {
  value = azurerm_windows_virtual_machine_scale_set.vmss.admin_password
}