terraform {
  backend "azurerm" {
    resource_group_name   = "tfstate-rg"
    storage_account_name  = "azerty1234azerty"
    container_name        = "tfstate"
    key                   = "rg-demo/terraform.tfstate"
    use_azuread_auth      = true
  }

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.100"
    }
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name = "rg-collab-demo"
  location = "France Central"
  }