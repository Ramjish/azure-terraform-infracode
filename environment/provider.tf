terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.80.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "ado-rg-ramji"
    storage_account_name = "ramjistorage12"
    container_name       = "ramji-container"
    key                  = "ramjitfstate" 
  }
}
provider "azurerm" {
  features {}
}
