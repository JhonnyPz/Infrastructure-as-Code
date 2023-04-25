# Project Enterprise Services
En el siguiente proyecto te muestra cómo ejecutar una carga de trabajo de máquinas virtuales y servidores de backup en Azure, aprovechando la redundancia en zona para los servicios y redundancia geográfica para los datos. 

Además, se implementa Azure Active Directory y Site Recovery services para garantizar la seguridad y disponibilidad de los datos. También se utilizan servicios de administración, monitorio y seguridad para mantener el entorno en funcionamiento, [ver mas sobre el flujo de trabajo...](https://jhonnypz.super.site/projects/deployment/solution-enterprise-services "ver mas")

![SolEntSer](https://user-images.githubusercontent.com/90069821/233811334-fe9632e1-2d86-42f7-90f6-3dc28cb0e39d.png "img Project")

| resource | time | module |
| - | - | - |
| resource group | 5 sec | raiz
| virtual network | 20 sec | azure-network |
| network security groups | 20 sec | azure-security |
| recovery service backup | 1 min | azure-backup |
| firewall | 5 min | azure-security |
| application gateway | 5 min | azure-routing |
| virtual machine scale set | 2 min | azure-app |
| public and private DNS | 2 min | azure-routing |
| vpn gateway | 30 min | azure-routing |


> NOTA vpn gateway

## variables
```bash
# Variables Resource Group
prefix = "name_prefix"
location = "location"

# Variables Virtual Network and Subnet
vnet_address = "space_address"
snet_vmss_address = "subnet_address_vmss"

# Variables Firewall
snet_fw_address = "subnetwork_address_firewall"

# Variables Application Gateway
snet_appgt_address = "subnetwork_address_application_gateway"

# Variables VPN Gateway
snet_vpngt_address = "subnetwork_address_vpn_gateway"

# Variables Public and Private DNS
domain_public_name = "name_public_DNS"
domain_private_name = "name_private_DNS"

# Variables Virtual Machine Scale Set VMSS
num_instances = "number_instances"
admin_username = "admin_username"
admin_password = "admin_password"
```
> Para mas detalle sobre las variables puedes mirar el archivo `variables.tf`

## Outputs
```bash
# Outputs resource Group
output "rg-name"
output "rg-location"

# Outputs Virtual Network
output "vnet-name"
output "vnet-address-space"

# Outputs Network Security Group
output "nsg-name"

# Subnet Virtual Machine Scale Set
output "snet-vmss-name"
output "snet-vmss-address"

# Subnet Firewall
output "snet-fw-name"
output "snet-fw-address"

# Subnet Application Gateway
output "snet-appgt-name"
output "snet-appgt-address"

# Subnet VPN Gateway
output "snet-vpngt-name"
output "snet-vpngt-address"

# Outputs Azure Firewall
output "firewall"
output "firewall-policy"

# Outputs Application Gateway
output "app-gateway-name"

# Outputs VPN Gateway
output "vpn-gateway-name"

# Outputs Virtual Machine Scale Set VMSS
output "vmss-name"
output "vmss-instances"
output "vmss-user"
output "vmss-password"

# Outputs public DNS
output "domain-public-name"
output "domain-public-a"

# Outputs private DNS
output "domain-private-name"
output "private-dns-vnetlink"

# Outputs Azure Recovery Service
output "rs-vault"

# Outputs Azure Backup
output "backup-policy-vmss"
```
> Para mas detalle sobre las salidas puedes mirar el archivo `outputs.tf`

## Despliegue
Guia paso a paso para el despliegue del proyecto
[Guia de despliegue](https://github.com/JhonnyPz/Infrastructure-as-Code/tree/main/Solution "guia")