# Variables Resource Group
variable "prefix" {
  type        = string
  default     = "example"
  description = "Un prefijo que se utilizará para nombrar los recursos del grupo de recursos y recursos asociados"
}

variable "location" {
  type        = string
  default     = "eastus2"
  description = "La ubicación geográfica en la que se crearán los recursos."
}

# Variables Virtual Network and Subnet
variable "vnet_address" {
  type        = string
  default     = "172.24.0.0/16"
  description = "La dirección de red virtual que se utilizará para crear la red virtual"
}

variable "snet_vmss_address" {
  type        = string
  default     = "172.24.1.0/24"
  description = "La dirección de subred que se utilizará para la creación de la instancia de escala de máquina virtual (VMSS)"
}

# Variables Firewall
variable "snet_fw_address" {
  type        = string
  default     = "172.24.10.0/24"
  description = "La dirección de subred que se utilizará para crear la instancia del firewall"
}

# Variables Application Gateway
variable "snet_appgt_address" {
  type        = string
  default     = "172.24.20.0/24"
  description = "La dirección de subred que se utilizará para crear la instancia de la application gateway"
}
# Variables VPN Gateway
variable "snet_vpngt_address" {
  type        = string
  default     = "172.24.30.0/24"
  description = "La dirección de subred que se utilizará para crear la instancia de la VPN gateway"
}

# Variables Public and Private DNS
variable "domain_public_name" {
  type        = string
  default     = "tfexample.com"
  description = "El nombre de dominio público que se utilizará para crear la zona DNS pública."
}

variable "domain_private_name" {
  type        = string
  default     = "tfexample.internal"
  description = "El nombre de dominio privado que se utilizará para crear la zona DNS privada."
}

# Variables Virtual Machine Scale Set VMSS
variable "num_instances" {
  type        = number
  default     = 2
  description = "El número de instancias de máquinas virtuales que se crearán en VMSS."
}

variable "admin_username" {
  type        = string
  default     = "azureuser"
  description = "El nombre de usuario del administrador que se utilizará para crear la instancia de la escala de máquina virtual."
}

variable "admin_password" {
  type        = string
  default     = "Password_1234"
  description = "La contraseña del administrador que se utilizará para crear la instancia de la escala de máquina virtual."
}