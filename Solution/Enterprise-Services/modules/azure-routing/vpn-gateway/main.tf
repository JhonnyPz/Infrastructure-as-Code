resource "azurerm_subnet" "snet-vpngt" {
  name                 = "GatewaySubnet"
  resource_group_name  = var.rg_name
  virtual_network_name = var.vnet_name
  address_prefixes     = [var.address_prefixes]
}

resource "azurerm_public_ip" "ip-vpngt" {
  name                = "TFip-vpngt-${var.prefix}"
  resource_group_name = var.rg_name
  location            = var.location
  allocation_method   = "Static"
  sku                 = "Standard"
}

resource "azurerm_virtual_network_gateway" "vpn-gateway" {
    name = "TFvpngt-${var.prefix}"
    resource_group_name = var.rg_name
    location = var.location

    type = "Vpn"
    vpn_type = "RouteBased"
    sku = "VpnGw1"

    ip_configuration {
        name = "vnet-gateway-config-${var.prefix}"
        public_ip_address_id = azurerm_public_ip.ip-vpngt.id
        private_ip_address_allocation = "Dynamic"
        subnet_id = azurerm_subnet.snet-vpngt.id
    } 
}