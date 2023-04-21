resource "azurerm_recovery_services_vault" "rs-vault" {
  name                = "TFrs-vault-${var.prefix}"
  resource_group_name = var.rg_name
  location            = var.location
  sku                 = "Standard"

  soft_delete_enabled = true
}

resource "azurerm_backup_policy_vm" "backup-policy-vmss" {
  name                = "TFrs-backup-policy-vmss-${var.prefix}"
  resource_group_name = var.rg_name
  recovery_vault_name = azurerm_recovery_services_vault.rs-vault.name

  backup {
    frequency = "Daily"
    time      = "23:00"
  }

  retention_daily {
    count = 30
  }
}