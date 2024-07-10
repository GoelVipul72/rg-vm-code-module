module "rg" {
  source = "../../../Child Module/rg"
  vvip   = var.vip_rg
}
module "sg" {
  source     = "../../../Child Module/storage"
  vvip       = var.vip_sg
  depends_on = [module.rg]
}
module "vnet" {
  source     = "../../../Child Module/vnet"
  vvip       = var.vip_vnet
  depends_on = [module.rg]
}
module "subnet" {
  source     = "../../../Child Module/subnet"
  vvip       = var.vip_subnet
  depends_on = [module.vnet]
}
module "vm" {
  source     = "../../../Child Module/vm"
  vvip       = var.vip_vm
  depends_on = [module.subnet]
}