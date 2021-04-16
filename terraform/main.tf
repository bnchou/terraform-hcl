resource "azurerm_resource_group" "main" {
  name     = "rg-tf-tcl"
  location = "westeurope"
}

resource "azurerm_storage_account" "sa" {
  for_each = var.deploy_storage_account != false ? var.storage_account : {}
  name = each.value.name
  location = each.value.location
  resource_group_name = azurerm_resource_group.main.name
  account_replication_type = "LRS"
  account_tier = "Standard"
}