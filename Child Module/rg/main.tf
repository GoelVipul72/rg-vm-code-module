resource "azurerm_resource_group" "rg" {
    for_each = var.vvip
  name     = each.value.name
  location = each.value.location
}