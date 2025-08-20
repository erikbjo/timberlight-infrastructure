module "naming" {
  source  = "Azure/naming/azurerm"
  version = "0.4.2"
  suffix = [
    local.tags.client,
    local.tags.project
  ]
}

resource "azurerm_resource_group" "main" {
  name     = module.naming.resource_group.name
  location = var.location
  tags     = local.tags
}
