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

# Create a resource Group
resource "azurerm_resource_group" "rg" {
  name     = "TFRG-${var.prefix}"
  location = var.location
  tags = {
    Environment = "Infrastructure"
    Solution    = "Enterprise-Services"
    By          = "JhonnyPz"
  }
}

# Create a virtual network and subnet
module "azure-network" {
  source = "./modules/azure-network"

  prefix           = var.prefix
  rg_name          = azurerm_resource_group.rg.name
  location         = azurerm_resource_group.rg.location
  address_space    = var.vnet_address
  address_prefixes = var.snet_vmss_address
}

# Create private and public DNS, Application Gateway and VPN Gateway
module "azure-routing-appgt" {
  source = "./modules/azure-routing/app-gateway"

  prefix   = var.prefix
  rg_name  = azurerm_resource_group.rg.name
  location = azurerm_resource_group.rg.location

  vnet_name        = module.azure-network.vnet-name
  address_prefixes = var.snet_appgt_address
}

# Create a virtual machine scale set
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