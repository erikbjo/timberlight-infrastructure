terraform {
  required_version = "~>1.12.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>4.40.0"
    }
    azapi = {
      source  = "azure/azapi"
      version = "~>2.6.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~>3.7.0"
    }
  }
}
