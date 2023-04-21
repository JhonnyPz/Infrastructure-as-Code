output "rs-vault" {
  value = azurerm_recovery_services_vault.rs-vault.name
}

output "backup-policy-vmss" {
  value = azurerm_backup_policy_vm.backup-policy-vmss
}