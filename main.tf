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

resource "azurerm_resource_group" "rg1" {
  name     = "${var.region_location}-rg1"
  location = var.region_location
}

resource "azurerm_resource_group" "rg2" {
  name     = "${var.region_location}-rg2"
  location = var.region_location
}

resource "azurerm_resource_group" "rg3" {
  name     = "${var.region_location}-rg3"
  location = var.region_location
}