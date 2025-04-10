terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.112.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "tfstate"
    storage_account_name = "tfstate223un"
    container_name       = "tfstate"
    key                  = "terraform.nimet-dev.tfstate"
  }
}

provider "azurerm" {
  features {}
}

# module "rg-dev" {
#   source  = "../../modules/gr-creation"
#   location = "centralus"
#   group_name = "nimet"
#   env_name = "dev"
# }

