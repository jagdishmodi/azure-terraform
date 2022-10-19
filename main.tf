data "azurerm_resource_group" "rg-existing" {
    name = "rgterrform"
}

resource "azurerm_storage_account" "storage" {
    name = "traininglab202324244"
    resource_group_name = data.azurerm_resource_group.rg-existing.name
    location = data.azurerm_resource_group.rg-existing.location
     account_replication_type = "LRS"
     account_tier             = "Standard"  
}

resource "azurerm_resource_group" "rgexisting" {
    name = "rg-terrform"
    location = "East US"
}
