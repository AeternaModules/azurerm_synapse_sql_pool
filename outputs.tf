output "synapse_sql_pools_collation" {
  description = "Map of collation values across all synapse_sql_pools, keyed the same as var.synapse_sql_pools"
  value       = { for k, v in azurerm_synapse_sql_pool.synapse_sql_pools : k => v.collation }
}
output "synapse_sql_pools_create_mode" {
  description = "Map of create_mode values across all synapse_sql_pools, keyed the same as var.synapse_sql_pools"
  value       = { for k, v in azurerm_synapse_sql_pool.synapse_sql_pools : k => v.create_mode }
}
output "synapse_sql_pools_data_encrypted" {
  description = "Map of data_encrypted values across all synapse_sql_pools, keyed the same as var.synapse_sql_pools"
  value       = { for k, v in azurerm_synapse_sql_pool.synapse_sql_pools : k => v.data_encrypted }
}
output "synapse_sql_pools_geo_backup_policy_enabled" {
  description = "Map of geo_backup_policy_enabled values across all synapse_sql_pools, keyed the same as var.synapse_sql_pools"
  value       = { for k, v in azurerm_synapse_sql_pool.synapse_sql_pools : k => v.geo_backup_policy_enabled }
}
output "synapse_sql_pools_name" {
  description = "Map of name values across all synapse_sql_pools, keyed the same as var.synapse_sql_pools"
  value       = { for k, v in azurerm_synapse_sql_pool.synapse_sql_pools : k => v.name }
}
output "synapse_sql_pools_recovery_database_id" {
  description = "Map of recovery_database_id values across all synapse_sql_pools, keyed the same as var.synapse_sql_pools"
  value       = { for k, v in azurerm_synapse_sql_pool.synapse_sql_pools : k => v.recovery_database_id }
}
output "synapse_sql_pools_restore" {
  description = "Map of restore values across all synapse_sql_pools, keyed the same as var.synapse_sql_pools"
  value       = { for k, v in azurerm_synapse_sql_pool.synapse_sql_pools : k => v.restore }
}
output "synapse_sql_pools_sku_name" {
  description = "Map of sku_name values across all synapse_sql_pools, keyed the same as var.synapse_sql_pools"
  value       = { for k, v in azurerm_synapse_sql_pool.synapse_sql_pools : k => v.sku_name }
}
output "synapse_sql_pools_storage_account_type" {
  description = "Map of storage_account_type values across all synapse_sql_pools, keyed the same as var.synapse_sql_pools"
  value       = { for k, v in azurerm_synapse_sql_pool.synapse_sql_pools : k => v.storage_account_type }
}
output "synapse_sql_pools_synapse_workspace_id" {
  description = "Map of synapse_workspace_id values across all synapse_sql_pools, keyed the same as var.synapse_sql_pools"
  value       = { for k, v in azurerm_synapse_sql_pool.synapse_sql_pools : k => v.synapse_workspace_id }
}
output "synapse_sql_pools_tags" {
  description = "Map of tags values across all synapse_sql_pools, keyed the same as var.synapse_sql_pools"
  value       = { for k, v in azurerm_synapse_sql_pool.synapse_sql_pools : k => v.tags }
}

