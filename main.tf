terraform {
    required_providers{
        azurerm = {
            source = "hashicorp/azurerm"
            version = "~> 3.0"
        }
    }
}
provider "azurerm" {
    features {}
}

resource "azurerm_resource_group" "test-rg" {
    name = var.rg_name
    location = var.location
    
}

 data "terraform_remote_state" "baseline" {
   backend = "remote"
   config = {
     organization = var.tfc_org_name
     hostname     = var.tfc_host_name
     workspaces = {
       name = var.tfc_baseline_repo
     }
   }
 }
