variable region_location {}


terraform {
  backend "azurerm" {
    resource_group_name  = "terraform-state"
    storage_account_name = "statestorage88"
    container_name       = "tf-state"
    key                  = "terraform.tfstate"
  }
}

provider "azurerm" {
  version = "=2.38.0"

  features {}
}

resource "azurerm_resource_group" "rg-hello-azure" {
  name     = "rg-hello-azure"
  location = var.region_location
}

resource "azurerm_resource_group" "rg-hello-azure2" {
  name     = "rg-hello-azure2"
  location = var.region_location
}

resource "azurerm_resource_group" "rg-hello-azure3" {
  name     = "rg-hello-azure4"
  location = var.region_location
}