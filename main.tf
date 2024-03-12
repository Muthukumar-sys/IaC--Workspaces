// main.tf

provider "azurerm" {
  features {}
}

// Define variables
variable "resource_group_name" {
  description = "The name of the resource group"
}

variable "location" {
  description = "The Azure region"
  default     = "East US"
}

variable "workspace_names" {
  description = "List of names for the Terraform workspaces"
  type        = list(string)
  default     = ["workspace1", "workspace2", "workspace3"]
}

// Create resource group
resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
}

// Create multiple workspaces
resource "azurerm_workspace" "workspace" {
  for_each           = toset(var.workspace_names)
  name               = each.key
  location           = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
}
