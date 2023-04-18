resource "azurerm_virtual_network" "vnet" {
  name                = "TFVnet-${var.prefix}"
  resource_group_name = var.rg_name
  location            = var.location
  address_space       = [var.address_space]
}

resource "azurerm_subnet" "snet-vmss" {
  name                 = "TFSnet-vmss-${var.prefix}"
  resource_group_name  = var.rg_name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = [var.address_prefixes]
}