resource "azurerm_resource_group" "redis_rg" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_managed_redis" "redis" {
  name                = var.redis_name
  resource_group_name = azurerm_resource_group.redis_rg.name
  location            = azurerm_resource_group.redis_rg.location

  sku_name = var.redis_sku

  high_availability_enabled = true
  public_network_access     = "Enabled"

  default_database {
    client_protocol                    = "Encrypted"
    access_keys_authentication_enabled = true
    clustering_policy                  = "OSSCluster"
    eviction_policy                    = "VolatileLRU"
  }
}