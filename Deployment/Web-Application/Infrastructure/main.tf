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

# Create resource Group : 5sec
resource "azurerm_resource_group" "rg" {
  name     = "TFRG-${var.prefix}"
  location = var.location
  tags = {
    Environment = "Infrastructure"
    Solution    = "Deployment-CICD"
    By          = "JhonnyPz"
  }
}

# Create Service Plan
resource "azurerm_service_plan" "plan" {
  name                = "plan-${var.prefix}"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  os_type             = "Linux"
  sku_name            = "B1"
}

resource "azurerm_linux_web_app" "web-app" {
  name                = "webapp-cicd-${var.prefix}"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_service_plan.plan.location
  service_plan_id     = azurerm_service_plan.plan.id

  site_config {}
}