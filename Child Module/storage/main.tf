resource "azurerm_storage_account" "sg" {
    for_each = var.vvip
  name                     = each.value.name_sg
  resource_group_name      = each.value.name_rg
  location                 = each.value.location
  account_tier             = "Standard"
  account_replication_type = "GRS"
}