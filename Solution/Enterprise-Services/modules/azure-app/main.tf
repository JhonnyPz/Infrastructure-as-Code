resource "azurerm_linux_virtual_machine_scale_set" "lvmss" {
  name                            = "TFvmss-${var.prefix}"
  resource_group_name             = var.rg_name
  location                        = var.location
  sku                             = "Standard_F2s_v2"
  instances                       = 2
  admin_username                  = var.admin_username
  admin_password                  = var.admin_password
  disable_password_authentication = false

  source_image_reference {
    publisher = "canonical"
    offer     = "0001-com-ubuntu-server-focal"
    sku       = "20_04-lts-gen2"
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
      subnet_id = var.subnet_id
    }
  }
}