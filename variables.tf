variable "autoscaling_lifecycle_hooks" {
  description = <<EOT
Map of autoscaling_lifecycle_hooks, attributes below
Required:
    - autoscaling_group_name
    - lifecycle_transition
    - name
Optional:
    - default_result
    - heartbeat_timeout
    - notification_metadata
    - notification_target_arn
    - region
    - role_arn
EOT

  type = map(object({
    autoscaling_group_name  = string
    lifecycle_transition    = string
    name                    = string
    default_result          = optional(string)
    heartbeat_timeout       = optional(number)
    notification_metadata   = optional(string)
    notification_target_arn = optional(string)
    region                  = optional(string)
    role_arn                = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.autoscaling_lifecycle_hooks : (
        v.heartbeat_timeout == null || (v.heartbeat_timeout >= 30 && v.heartbeat_timeout <= 7200)
      )
    ])
    error_message = "must be between 30 and 7200"
  }
  # Note: 5 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

