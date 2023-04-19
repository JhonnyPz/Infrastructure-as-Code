output "domain-public" {
  value = azurerm_dns_zone.public-dns.name
}

output "domain-public-a" {
  value = azurerm_dns_a_record.public-dns-a.name
}

output "domain-private" {
  value = azurerm_private_dns_zone.private-dns.name
}

output "private-dns-vnetlink" {
  value = azurerm_private_dns_zone_virtual_network_link.private-dns-vnetlink.name
}
