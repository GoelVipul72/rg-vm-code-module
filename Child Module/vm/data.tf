    data "azurerm_subnet" "subnet" {
        for_each = var.vvip
  name                 = each.value.name_subnet
  resource_group_name  = each.value.name_rg
  virtual_network_name = each.value.name_vnet
      }