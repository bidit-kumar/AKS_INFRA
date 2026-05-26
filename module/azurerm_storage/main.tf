resource "azurerm_storage_account" "example" {
  for_each                 = var.st_dev
  name                     = each.value.st_name
  resource_group_name      = each.value.rg_name
  location                 = each.value.location
  account_tier             = each.value.account_tier
  account_replication_type = each.value.account_replication_type
}
