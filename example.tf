terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 2.26"
    }
  }

  required_version = ">= 0.14.9"

  backend "remote" {
    organization = "parrsoftware"
    workspaces {
      name = "terraform-parrsoftware"
    }
  }

}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = "myTFResourceGroup"
  location = "northeurope"
}
