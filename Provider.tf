terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "5.0.0"
    }
  }
  backend "azurerm" {
    storage_account_name = "tusharbackendtfstate"
    resource_group_name  = "tushar_RG"
    container_name       = "tfstatefile"
    key                  = "radis1.tfstate"
  }
}

provider "azurerm" {
  features {}
  subscription_id = "a2058b5a-80e1-4c68-98bc-8d39c5048f2a"
}