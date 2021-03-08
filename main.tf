terraform {
  backend "azurerm" {
  }
}

provider "azurerm" {
  version = "=2.38.0"
  subscription_id = "a1fd9bc3-ab04-4970-86d2-c084f74d0cf1"
  client_id       = ${{ secrets.SPN_ID }}
  client_secret   = ${{ secrets.SPN_PASS }}
  tenant_id       = "466a7a3c-a815-4eeb-929e-498df915f571"

  features {}
}

resource "azurerm_resource_group" "rg-hello-azure" {
  name     = "rg-hello-azure"
  location = "westeurope"
}