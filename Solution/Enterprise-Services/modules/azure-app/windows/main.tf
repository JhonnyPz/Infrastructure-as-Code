resource "azurerm_windows_virtual_machine_scale_set" "vmss" {
  name                 = "TFVMSS-windows-${var.prefix}"
  resource_group_name  = var.rg_name
  location             = var.location
  sku                  = "Standard_F2s_v2"
  instances            = var.instances
  admin_username       = var.admin_username
  admin_password       = var.admin_password
  computer_name_prefix = var.prefix

  source_image_reference {
    publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = "2019-datacenter-smalldisk-g2"
    version   = "latest"
  }

  os_disk {
    storage_account_type = "Standard_LRS"
    caching              = "ReadWrite"
  }

  network_interface {
    name    = "nic-${var.prefix}"
    primary = true

    ip_configuration {
      name      = "vmss-vnet-${var.prefix}"
      primary   = true
      subnet_id                                    = var.subnet_id
      application_gateway_backend_address_pool_ids = [var.appgateway_backpool_id]
    }
  }
}