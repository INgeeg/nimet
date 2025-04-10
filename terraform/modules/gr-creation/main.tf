
resource "azurerm_resource_group" "nimet-dev-gr" {
  name     = format("%s-%s-gr",var.group_name, var.env_name)             
  location = var.location
}


