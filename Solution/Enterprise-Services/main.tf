# Configure the Azure provider
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0.2"
    }
  }

  required_version = ">= 1.1.0"
}

provider "azurerm" {
  features {}
}

# Create resource Group
resource "azurerm_resource_group" "rg" {
  name     = "TFRG-${var.prefix}"
  location = var.location
  tags = {
    Environment = "Infrastructure"
    Solution    = "Enterprise-Services"
    By          = "JhonnyPz"
  }
}

# Create virtual network and subnet
module "azure-network" {
  source = "./modules/azure-network"

  prefix           = var.prefix
  rg_name          = azurerm_resource_group.rg.name
  location         = azurerm_resource_group.rg.location
  address_space    = var.vnet_address
  address_prefixes = var.snet_vmss_address
}

# Create Network Security Group
module "azure-security-nsg" {
  source = "./modules/azure-security/nsg"

  prefix           = var.prefix
  rg_name          = azurerm_resource_group.rg.name
  location         = azurerm_resource_group.rg.location
}

# Create Azure Firewall
/*
module "azure-security-firewall" {
  source = "./modules/azure-security/firewall"

  prefix           = var.prefix
  rg_name          = azurerm_resource_group.rg.name
  location         = azurerm_resource_group.rg.location

  vnet_name        = module.azure-network.vnet-name
  address_prefixes = var.snet_fw_address
}
*/
# Create Application Gateway
//*
module "azure-routing-appgt" {
  source = "./modules/azure-routing/app-gateway"

  prefix   = var.prefix
  rg_name  = azurerm_resource_group.rg.name
  location = azurerm_resource_group.rg.location

  vnet_name        = module.azure-network.vnet-name
  address_prefixes = var.snet_appgt_address
}
//*/

# Create a virtual machine scale set
//*
module "azure-app" {
  source = "./modules/azure-app/linux"

  prefix   = var.prefix
  rg_name  = azurerm_resource_group.rg.name
  location = azurerm_resource_group.rg.location

  instances      = var.num_instances
  admin_username = var.admin_username
  admin_password = var.admin_password

  subnet_id              = module.azure-network.snet-vmss-id
  appgateway_backpool_id = module.azure-routing-appgt.app-gateway-pool-id

  depends_on = [module.azure-routing-appgt]
}
//*/

# Create public and private DNS
/*
module "azure-routing-dnszone" {
  source = "./modules/azure-routing/dns-zone"

  prefix  = var.prefix
  rg_name = azurerm_resource_group.rg.name

  domain_public_name = var.domain_public_name
  ip_appgt           = module.azure-routing-appgt.ip-appgt-id

  domain_private_name = var.domain_private_name
  vnet_id             = module.azure-network.vnet-id

  depends_on = [module.azure-routing-appgt]
}
*/

# Create VPN Gateway : 30min
/*
module "azure-routing-vpngt" {
  source = "./modules/azure-routing/vpn-gateway"

  prefix   = var.prefix
  rg_name  = azurerm_resource_group.rg.name
  location = azurerm_resource_group.rg.location

  vnet_name        = module.azure-network.vnet-name
  address_prefixes = var.snet_vpngt_address
}
*/