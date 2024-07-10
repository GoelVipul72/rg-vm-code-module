vip_rg = {
  rg01 = {
    name     = "vipul01"
    location = "centralindia"
  }
  rg02 = {
    name     = "vipul02"
    location = "centralindia"
  }
}
vip_sg = {
    sg01 = {
      name_sg  = "storageabc01"
      name_rg  = "vipul01"
      location = "centralindia"
    }
}
vip_vnet = {
  vnet01 = {
    name_nsg      = "nsg01"
    location      = "centralindia"
    name_rg       = "vipul01"
    name_vnet     = "vnet01"
    address_space = ["10.0.1.0/16"]
  }
  vnet02 = {
    name_nsg      = "nsg02"
    location      = "centralindia"
    name_rg       = "vipul02"
    name_vnet     = "vnet02"
    address_space = ["10.0.2.0/16"]
  }

}
vip_subnet = {
  subnet01 = {
    name_subnet      = "subnet01"
    name_rg          = "vipul01"
    name_vnet        = "vnet01"
    address_prefixes = ["10.0.1.1/24"]
  }
  subnet02 = {
    name_subnet      = "subnet02"
    name_rg          = "vipul02"
    name_vnet        = "vnet02"
    address_prefixes = ["10.0.2.1/24"]
  }
}
vip_vm = {
  vm01 = { name_vm = "vm01"
    location       = "centralindia"
    name_rg        = "vipul01"
    admin_username = "adminuser"
    admin_password = "Adminuser123"
    name_vnet      = "vnet01"
    name_subnet    = "subnet01"
    name_nic= "nic01"
  }
  vm02 = {
    name_vm        = "vm02"
    location       = "centralindia"
    name_rg        = "vipul02"
    admin_username = "adminuser"
    admin_password = "Adminuser123"
    name_vnet      = "vnet02"
    name_subnet    = "subnet02"
    name_nic="nic02"
  }
  
  
}