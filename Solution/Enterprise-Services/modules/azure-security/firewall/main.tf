resource "azurerm_subnet" "snet-fw" {
  name                 = "AzureFirewallSubnet"
  resource_group_name  = var.rg_name
  virtual_network_name = var.vnet_name
  address_prefixes     = [var.address_prefixes]
}

resource "azurerm_public_ip" "ip-fw" {
  name                = "TFip-fw-${var.prefix}"
  resource_group_name = var.rg_name
  location            = var.location
  allocation_method   = "Static"
  sku                 = "Standard"
}

resource "azurerm_firewall_policy" "fw-policy" {
  name                = "TFfw-policy-${var.prefix}"
  resource_group_name = var.rg_name
  location            = var.location
  sku                 = "Standard"
}

resource "azurerm_firewall" "fw" {
  name                = "TFfw-${var.prefix}"
  resource_group_name = var.rg_name
  location            = var.location
  sku_name            = "AZFW_VNet"
  sku_tier            = "Standard"
  firewall_policy_id  = azurerm_firewall_policy.firewall-policy.id

  ip_configuration {
    name                 = "ipfw-config-${var.prefix}"
    subnet_id            = azurerm_subnet.snet-fw.id
    public_ip_address_id = azurerm_public_ip.ip-fw.id
  }
}