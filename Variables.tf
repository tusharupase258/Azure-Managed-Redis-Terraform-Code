variable "resource_group_name" {
  description = "Resource group name"
  type        = string
  default     = "tushar-redis-rg"
}

variable "location" {
  description = "Azure region"
  type        = string
  default     = "Central India"
}

variable "redis_name" {
  description = "Globally unique Managed Redis resource name"
  type        = string
  default     = "tushar-managed-redis"
}

variable "redis_sku" {
  description = "Azure Managed Redis SKU"
  type        = string
  default     = "Balanced_B3"
}
