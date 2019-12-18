provider "azurerm" {
  subscription_id = var.subscription_id
  client_id       = var.azure_client_id
  client_secret   = var.azure_client_secret
  tenant_id       = var.tenant_id

}
