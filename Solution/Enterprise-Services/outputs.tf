# Outputs resource Group
output "rg-name" {
  value       = azurerm_resource_group.rg.name
  description = "Nombre del grupo de recursos"
}

output "rg-location" {
  value       = azurerm_resource_group.rg.location
  description = "Ubicación geográfica en la que se crearán los recursos." 
}

# Outputs Virtual Network
output "vnet-name" {
  value       = module.azure-network.vnet-name
  description = "Nombre de la virtual network"
}

output "vnet-address-space" {
  value       = module.azure-network.vnet-address
  description = "Dirección de red virtual que se utilizará para crear la red virtual"
}

# Outputs Network Security Group
output "nsg-name" {
  value = module.azure-security-nsg.nsg-name
  description = "Nombre del network security group"
}

# Subnet Virtual Machine Scale Set
output "snet-vmss-name" {
  value       = module.azure-network.snet-vmss-name
  description = "Nombre de la subnet de VMSS"
}

output "snet-vmss-address" {
  value       = module.azure-network.snet-vmss-address
  description = "Dirección de subred que se utilizará para la creación de la instancia de escala de máquina virtual (VMSS)"
}

# Subnet Firewall
output "snet-fw-name" {
  value = module.azure-security-firewall.snet-fw-name
  description = "Nombre de la subnet de Firewall"
}

output "snet-fw-address" {
  value = module.azure-security-firewall.snet-fw-address
  description = "Dirección de subred que se utilizará para crear la instancia del firewall"
}

# Subnet Application Gateway
output "snet-appgt-name" {
  value = module.azure-routing-appgt.snet-appgt-name
  description = "Nombre de la subnet de Application Gateway"
}

output "snet-appgt-address" {
  value = module.azure-routing-appgt.snet-appgt-address
  description = "Dirección de subred que se utilizará para crear la instancia de la application gateway"
}

# Subnet VPN Gateway
output "snet-vpngt-name" {
  value = module.azure-routing-vpngt.snet-vpngt-name
  description = "Nombre de la subnet de VPN Gateway"
}

output "snet-vpngt-address" {
  value = module.azure-routing-vpngt.snet-vpngt-address
  description = "Dirección de subred que se utilizará para crear la instancia de la VPN gateway"
}

# Outputs Azure Firewall
output "firewall" {
  value = module.azure-security-firewall.firewall
  description = "Nombre del firewall"
}

output "firewall-policy" {
  value = module.azure-security-firewall.firewall-policy
  description = "Nombre del firewall policy"
}

# Outputs Application Gateway
output "app-gateway-name" {
  value = module.azure-routing-appgt.app-gateway-name
  "Nombre de la application gateway"
}

# Outputs VPN Gateway
output "vpn-gateway-name" {
  value = module.azure-routing-vpngt.vpn-gateway-name
  description = "Nombre del VPN Gateway"
}

# Outputs Virtual Machine Scale Set VMSS
output "vmss-name" {
  value       = module.azure-app.vmss-name
  description = "Nombre del virtual machine scale set"
}

output "vmss-instances" {
  value       = module.azure-app.vmss-instances
  description = "Nummero de instanceas de VMSS"
}

output "vmss-user" {
  value       = module.azure-app.vmss-user
  description = "Usuario Administrador"
}

output "vmss-password" {
  value       = module.azure-app.vmss-password
  sensitive   = true
  description = "Password Usuari Administrador"
}

# Outputs public DNS
output "domain-public-name" {
  value       = module.azure-routing-dnszone.domain-public
  description = "Nombre DNS publico"
}

output "domain-public-a" {
  value       = module.azure-routing-dnszone.domain-public-a
  description = "Registro www"
}

# Outputs private DNS
output "domain-private-name" {
  value       = module.azure-routing-dnszone.domain-private
  description = "Nombre DNS privado"
}

output "private-dns-vnetlink" {
  value       = module.azure-routing-dnszone.private-dns-vnetlink
  description = "Nombre private DNS vnetlink"
}

# Outputs Azure Recovery Service
output "rs-vault" {
  value       = module.azure-backup.rs-vault
  description = "Nombre recovery Service Vault"
}

# Outputs Azure Backup
output "backup-policy-vmss" {
  value       = module.azure-backup.backup-policy-vmss
  description = "Nombre backup policy VMSS"
}