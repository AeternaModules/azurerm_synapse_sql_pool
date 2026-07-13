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
    create_mode               = optional(string)
    data_encrypted            = optional(bool)
    geo_backup_policy_enabled = optional(bool)
    recovery_database_id      = optional(string)
    tags                      = optional(map(string))
    restore = optional(object({
      point_in_time      = string
      source_database_id = string
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.synapse_sql_pools : (
        contains(["DW100c", "DW200c", "DW300c", "DW400c", "DW500c", "DW1000c", "DW1500c", "DW2000c", "DW2500c", "DW3000c", "DW5000c", "DW6000c", "DW7500c", "DW10000c", "DW15000c", "DW30000c"], v.sku_name)
      )
    ])
    error_message = "must be one of: DW100c, DW200c, DW300c, DW400c, DW500c, DW1000c, DW1500c, DW2000c, DW2500c, DW3000c, DW5000c, DW6000c, DW7500c, DW10000c, DW15000c, DW30000c"
  }
  validation {
    condition = alltrue([
      for k, v in var.synapse_sql_pools : (
        v.tags == null || (length(v.tags) <= 50)
      )
    ])
    error_message = "[from tags.Validate: invalid when len(value) > 50]"
  }
  # Note: 13 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

