variable "st_dev" {
 type = map(object({
    st_name                  = string
    rg_name                  = string
    location                 = string
    account_tier             = string
    account_replication_type = string
  }))

}
