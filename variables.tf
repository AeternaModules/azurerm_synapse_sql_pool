variable "synapse_sql_pools" {
  description = <<EOT
Map of synapse_sql_pools, attributes below
Required:
    - name
    - sku_name
    - storage_account_type
    - synapse_workspace_id
Optional:
    - collation
    - create_mode
    - data_encrypted
    - geo_backup_policy_enabled
    - recovery_database_id
    - tags
    - restore (block):
        - point_in_time (required)
        - source_database_id (required)
EOT

  type = map(object({
    name                      = string
    sku_name                  = string
    storage_account_type      = string
    synapse_workspace_id      = string
    collation                 = optional(string)
    create_mode               = optional(string, "Default")
    data_encrypted            = optional(bool)
    geo_backup_policy_enabled = optional(bool, true)
    recovery_database_id      = optional(string)
    tags                      = optional(map(string))
    restore = optional(object({
      point_in_time      = string
      source_database_id = string
    }))
  }))
}

