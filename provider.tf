terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.27.0"
    }
  }
  backend "azurerm"{
    resource_group_name = "rgterrform"
    storage_account_name = "traininglab202324"
    container_name = "terraform-backend"
    key = "terraform.tfstate"
  }
}

provider "azurerm" {
 features {}
}