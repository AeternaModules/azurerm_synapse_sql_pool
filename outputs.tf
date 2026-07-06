output "synapse_sql_pools" {
  description = "All synapse_sql_pool resources"
  value       = azurerm_synapse_sql_pool.synapse_sql_pools
}
output "synapse_sql_pools_collation" {
  description = "List of collation values across all synapse_sql_pools"
  value       = [for k, v in azurerm_synapse_sql_pool.synapse_sql_pools : v.collation]
}
output "synapse_sql_pools_create_mode" {
  description = "List of create_mode values across all synapse_sql_pools"
  value       = [for k, v in azurerm_synapse_sql_pool.synapse_sql_pools : v.create_mode]
}
output "synapse_sql_pools_data_encrypted" {
  description = "List of data_encrypted values across all synapse_sql_pools"
  value       = [for k, v in azurerm_synapse_sql_pool.synapse_sql_pools : v.data_encrypted]
}
output "synapse_sql_pools_geo_backup_policy_enabled" {
  description = "List of geo_backup_policy_enabled values across all synapse_sql_pools"
  value       = [for k, v in azurerm_synapse_sql_pool.synapse_sql_pools : v.geo_backup_policy_enabled]
}
output "synapse_sql_pools_name" {
  description = "List of name values across all synapse_sql_pools"
  value       = [for k, v in azurerm_synapse_sql_pool.synapse_sql_pools : v.name]
}
output "synapse_sql_pools_recovery_database_id" {
  description = "List of recovery_database_id values across all synapse_sql_pools"
  value       = [for k, v in azurerm_synapse_sql_pool.synapse_sql_pools : v.recovery_database_id]
}
output "synapse_sql_pools_restore" {
  description = "List of restore values across all synapse_sql_pools"
  value       = [for k, v in azurerm_synapse_sql_pool.synapse_sql_pools : v.restore]
}
output "synapse_sql_pools_sku_name" {
  description = "List of sku_name values across all synapse_sql_pools"
  value       = [for k, v in azurerm_synapse_sql_pool.synapse_sql_pools : v.sku_name]
}
output "synapse_sql_pools_storage_account_type" {
  description = "List of storage_account_type values across all synapse_sql_pools"
  value       = [for k, v in azurerm_synapse_sql_pool.synapse_sql_pools : v.storage_account_type]
}
output "synapse_sql_pools_synapse_workspace_id" {
  description = "List of synapse_workspace_id values across all synapse_sql_pools"
  value       = [for k, v in azurerm_synapse_sql_pool.synapse_sql_pools : v.synapse_workspace_id]
}
output "synapse_sql_pools_tags" {
  description = "List of tags values across all synapse_sql_pools"
  value       = [for k, v in azurerm_synapse_sql_pool.synapse_sql_pools : v.tags]
}

