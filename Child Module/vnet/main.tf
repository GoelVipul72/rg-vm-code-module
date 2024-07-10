resource "azurerm_network_security_group" "nsg" {
    for_each= var.vvip
  name                = each.value.name_nsg
  location            = each.value.location
  resource_group_name = each.value.name_rg
}

resource "azurerm_virtual_network" "vnet" {
    for_each = var.vvip
  name                = each.value.name_vnet
  location            = each.value.location
  resource_group_name = each.value.name_rg
  address_space       = each.value.address_space
}