module "rg" {
  source = "../../module/azurerm_rg"
  rg_dev = var.rg_devA
}

module "st" {
  depends_on = [module.rg]
  source     = "../../module/azurerm_storage"
  st_dev     = var.st_bidit

}

module "vnet" {
  depends_on = [module.rg,module.st]
  source    = "../../module/azurerm_vnet"
  vnet_dev = var.vnet_devA
}
