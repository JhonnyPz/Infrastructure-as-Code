resource "azurerm_dns_zone" "public-dns" {
  name                = var.domain_public_name
  resource_group_name = var.rg_name
}

resource "azurerm_dns_a_record" "public-dns-a" {
  name                = "www"
  resource_group_name = var.rg_name
  zone_name           = azurerm_dns_zone.public-dns.name
  ttl                 = 300
  target_resource_id  = var.ip_appgt
}

resource "azurerm_private_dns_zone" "private-dns" {
  name                = var.domain_private_name
  resource_group_name = var.rg_name
}

resource "azurerm_private_dns_zone_virtual_network_link" "private-dns-vnetlink" {
  name                  = "private"
  resource_group_name   = var.rg_name
  private_dns_zone_name = azurerm_private_dns_zone.private-dns.name
  virtual_network_id    = var.vnet_id
  //registration_enabled  = true
}