output "synapse_sql_pools_id" {
  description = "Map of id values across all synapse_sql_pools, keyed the same as var.synapse_sql_pools"
  value       = { for k, v in azurerm_synapse_sql_pool.synapse_sql_pools : k => v.id if v.id != null && length(v.id) > 0 }
}
output "synapse_sql_pools_collation" {
  description = "Map of collation values across all synapse_sql_pools, keyed the same as var.synapse_sql_pools"
  value       = { for k, v in azurerm_synapse_sql_pool.synapse_sql_pools : k => v.collation if v.collation != null && length(v.collation) > 0 }
}
output "synapse_sql_pools_create_mode" {
  description = "Map of create_mode values across all synapse_sql_pools, keyed the same as var.synapse_sql_pools"
  value       = { for k, v in azurerm_synapse_sql_pool.synapse_sql_pools : k => v.create_mode if v.create_mode != null && length(v.create_mode) > 0 }
}
output "synapse_sql_pools_data_encrypted" {
  description = "Map of data_encrypted values across all synapse_sql_pools, keyed the same as var.synapse_sql_pools"
  value       = { for k, v in azurerm_synapse_sql_pool.synapse_sql_pools : k => v.data_encrypted if v.data_encrypted != null }
}
output "synapse_sql_pools_geo_backup_policy_enabled" {
  description = "Map of geo_backup_policy_enabled values across all synapse_sql_pools, keyed the same as var.synapse_sql_pools"
  value       = { for k, v in azurerm_synapse_sql_pool.synapse_sql_pools : k => v.geo_backup_policy_enabled if v.geo_backup_policy_enabled != null }
}
output "synapse_sql_pools_name" {
  description = "Map of name values across all synapse_sql_pools, keyed the same as var.synapse_sql_pools"
  value       = { for k, v in azurerm_synapse_sql_pool.synapse_sql_pools : k => v.name if v.name != null && length(v.name) > 0 }
}
output "synapse_sql_pools_recovery_database_id" {
  description = "Map of recovery_database_id values across all synapse_sql_pools, keyed the same as var.synapse_sql_pools"
  value       = { for k, v in azurerm_synapse_sql_pool.synapse_sql_pools : k => v.recovery_database_id if v.recovery_database_id != null && length(v.recovery_database_id) > 0 }
}
output "synapse_sql_pools_restore" {
  description = "Map of restore values across all synapse_sql_pools, keyed the same as var.synapse_sql_pools"
  value       = { for k, v in azurerm_synapse_sql_pool.synapse_sql_pools : k => v.restore if v.restore != null && length(v.restore) > 0 }
}
output "synapse_sql_pools_sku_name" {
  description = "Map of sku_name values across all synapse_sql_pools, keyed the same as var.synapse_sql_pools"
  value       = { for k, v in azurerm_synapse_sql_pool.synapse_sql_pools : k => v.sku_name if v.sku_name != null && length(v.sku_name) > 0 }
}
output "synapse_sql_pools_storage_account_type" {
  description = "Map of storage_account_type values across all synapse_sql_pools, keyed the same as var.synapse_sql_pools"
  value       = { for k, v in azurerm_synapse_sql_pool.synapse_sql_pools : k => v.storage_account_type if v.storage_account_type != null && length(v.storage_account_type) > 0 }
}
output "synapse_sql_pools_synapse_workspace_id" {
  description = "Map of synapse_workspace_id values across all synapse_sql_pools, keyed the same as var.synapse_sql_pools"
  value       = { for k, v in azurerm_synapse_sql_pool.synapse_sql_pools : k => v.synapse_workspace_id if v.synapse_workspace_id != null && length(v.synapse_workspace_id) > 0 }
}
output "synapse_sql_pools_tags" {
  description = "Map of tags values across all synapse_sql_pools, keyed the same as var.synapse_sql_pools"
  value       = { for k, v in azurerm_synapse_sql_pool.synapse_sql_pools : k => v.tags if v.tags != null && length(v.tags) > 0 }
}

