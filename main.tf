terraform {
  backend "azurerm" {
    resource_group_name  = "rg-hello-azure-tf"
    storage_account_name = "sahelloazuretf8765"
    container_name       = "terraform-state"
    key                  = "terraform.tfstate"
  }
}

provider "azurerm" {
  version = "=2.38.0"
  subscription_id = "a1fd9bc3-ab04-4970-86d2-c084f74d0cf1"
  client_id       = var.ARM_CLIENT_ID
  client_secret   = var.ARM_CLIENT_SECRET
  tenant_id       = "466a7a3c-a815-4eeb-929e-498df915f571"

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