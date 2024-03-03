# Terraform Block
terraform {
  required_version = ">= 1.0.0"
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = ">= 3.94" 
    }
  }
  backend "azurerm" {
    resource_group_name = "terraform_rg01"
    storage_account_name = "terraformstate2015"
    container_name = "tfcontainer01"
    key = "terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
}
