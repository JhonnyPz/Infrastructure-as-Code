# Variables Resource Group
variable "prefix" {
  type        = string
  default     = "example"
  description = "Name of the prefix"
}

variable "location" {
  type        = string
  default     = "eastus2"
  description = "Select the location of the resource group"
}

# Variables Virtual Network and Subnet
variable "vnet_address" {
  type        = string
  default     = "172.24.0.0/16"
  description = "description"
}

variable "snet_vmss_address" {
  type        = string
  default     = "172.24.10.0/24"
  description = "description"
}

# Application Gateway and VPN Gateway
variable "snet_appgt_address" {
  type        = string
  default     = "172.24.20.0/24"
  description = "description"
}

# Variables Virtual Machine Scale Set VMSS
variable "num_instances" {
  type        = number
  default     = 2
  description = "description"
}

variable "admin_username" {
  type        = string
  default     = "azureuser"
  description = "description"
}

variable "admin_password" {
  type        = string
  default     = "Password_1234"
  description = "description"
}