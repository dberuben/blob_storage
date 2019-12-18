resource "azurerm_resource_group" "blob_storage_rg" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_storage_account" "storage_account" {
  name                     = var.mvp_name
  resource_group_name      = azurerm_resource_group.blob_storage_rg.name
  location                 = azurerm_resource_group.blob_storage_rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_container" "storage_container" {
  name                  = var.mvp_name
  resource_group_name   = azurerm_resource_group.blob_storage_rg.name
  storage_account_name  = azurerm_storage_account.blob_storage_rg.name
  container_access_type = "private"
}

