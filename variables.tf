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
    create_mode               = optional(string) # Default: "Default"
    data_encrypted            = optional(bool)
    geo_backup_policy_enabled = optional(bool) # Default: true
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
  # --- Unconfirmed validation candidates, derived from azurerm_synapse_sql_pool's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: name
  #   source:    [from validate.SqlPoolName] !ok
  # path: name
  #   source:    [from validate.SqlPoolName] !regexp.MustCompile(`^[^<>*%&:\\\/?@-]{0,59}[^\s.<>*%&:\\\/?@-]$`).MatchString(v)
  # path: synapse_workspace_id
  #   source:    [from validate.WorkspaceID] !ok
  # path: synapse_workspace_id
  #   source:    [from validate.WorkspaceID] err != nil
  # path: storage_account_type
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: create_mode
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: collation
  #   source:    mssqlValidate.DatabaseCollation: no recognizable `if ... { errors = append(...) }` pattern - read it by hand
  # path: recovery_database_id
  #   source:    validation.Any(...) - no translation rule yet, add one
  # path: restore.point_in_time
  #   source:    validation.IsRFC3339Time(...) - no translation rule yet, add one
  # path: restore.source_database_id
  #   source:    validation.Any(...) - no translation rule yet, add one
  # path: tags
  #   condition: length(value) <= 50
  #   message:   [from tags.Validate: invalid when len(value) > 50]
  #   source:    [from tags.Validate: invalid when len(value) > 50]
  # path: tags
  #   condition: length(value) <= 512
  #   message:   [from tags.Validate: invalid when len(value) > 512]
  #   source:    [from tags.Validate: invalid when len(value) > 512]
  # path: tags
  #   source:    [from tags.Validate] err != nil
  # path: tags
  #   condition: length(value) <= 256
  #   message:   [from tags.Validate: invalid when len(value) > 256]
  #   source:    [from tags.Validate: invalid when len(value) > 256]
}

