variable "prefix" {
  type = string
}

variable "rg_name" {
  type = string
}

variable "location" {
  type = string
}

variable "instances" {
  type = number
}

variable "admin_username" {
  type = string
}

variable "admin_password" {
  type = string
}

variable "nsg_id" {
  type = string
}

variable "subnet_id" {
  type = string
}

variable "appgateway_backpool_id" {
  type = string
}
