
terraform {
  backend "azurerm" {
    resource_group_name  = "rg-hello-azure-tf"
    storage_account_name = "sahelloazuretf8765"
    container_name       = "terraform-state"
    key                  = "terraform.tfstate2"
  }
}

provider "azurerm" {
  version = "=2.38.0"

  features {}
}

resource "azurerm_resource_group" "rg-hello-azure" {
  name     = "rg-hello-azure"
  location = "westeurope"
}

resource "azurerm_resource_group" "rg-hello-azure2" {
  name     = "rg-hello-azure2"
  location = "westeurope"
}

resource "azurerm_resource_group" "rg-hello-azure3" {
  name     = "rg-hello-azure3"
  location = "westeurope"
}