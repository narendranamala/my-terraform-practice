## Provider block of code
provider "azurerm" {
 
   version = "~>2.0"

    subscription_id=""
    tenant_id=""
    client_id=""
  features {
  }
}

        #key                       #name  
## Resource group creation

resource "azurerm_resource_group" "R1" {
  name     = var.rgname
  location = var.location
}

## Vnet creation

resource "azurerm_virtual_network" "name" {
  name = var.vnet_name
  address_space = var.address_space
  resource_group_name= azurerm_resource_group.R1.name
  location = azurerm_resource_group.R1.location
  
}