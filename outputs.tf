output "autoscaling_lifecycle_hooks_id" {
  description = "Map of id values across all autoscaling_lifecycle_hooks, keyed the same as var.autoscaling_lifecycle_hooks"
  value       = { for k, v in aws_autoscaling_lifecycle_hook.autoscaling_lifecycle_hooks : k => v.id if v.id != null && length(v.id) > 0 }
}
output "autoscaling_lifecycle_hooks_autoscaling_group_name" {
  description = "Map of autoscaling_group_name values across all autoscaling_lifecycle_hooks, keyed the same as var.autoscaling_lifecycle_hooks"
  value       = { for k, v in aws_autoscaling_lifecycle_hook.autoscaling_lifecycle_hooks : k => v.autoscaling_group_name if v.autoscaling_group_name != null && length(v.autoscaling_group_name) > 0 }
}
output "autoscaling_lifecycle_hooks_default_result" {
  description = "Map of default_result values across all autoscaling_lifecycle_hooks, keyed the same as var.autoscaling_lifecycle_hooks"
  value       = { for k, v in aws_autoscaling_lifecycle_hook.autoscaling_lifecycle_hooks : k => v.default_result if v.default_result != null && length(v.default_result) > 0 }
}
output "autoscaling_lifecycle_hooks_heartbeat_timeout" {
  description = "Map of heartbeat_timeout values across all autoscaling_lifecycle_hooks, keyed the same as var.autoscaling_lifecycle_hooks"
  value       = { for k, v in aws_autoscaling_lifecycle_hook.autoscaling_lifecycle_hooks : k => v.heartbeat_timeout if v.heartbeat_timeout != null }
}
output "autoscaling_lifecycle_hooks_lifecycle_transition" {
  description = "Map of lifecycle_transition values across all autoscaling_lifecycle_hooks, keyed the same as var.autoscaling_lifecycle_hooks"
  value       = { for k, v in aws_autoscaling_lifecycle_hook.autoscaling_lifecycle_hooks : k => v.lifecycle_transition if v.lifecycle_transition != null && length(v.lifecycle_transition) > 0 }
}
output "autoscaling_lifecycle_hooks_name" {
  description = "Map of name values across all autoscaling_lifecycle_hooks, keyed the same as var.autoscaling_lifecycle_hooks"
  value       = { for k, v in aws_autoscaling_lifecycle_hook.autoscaling_lifecycle_hooks : k => v.name if v.name != null && length(v.name) > 0 }
}
output "autoscaling_lifecycle_hooks_notification_metadata" {
  description = "Map of notification_metadata values across all autoscaling_lifecycle_hooks, keyed the same as var.autoscaling_lifecycle_hooks"
  value       = { for k, v in aws_autoscaling_lifecycle_hook.autoscaling_lifecycle_hooks : k => v.notification_metadata if v.notification_metadata != null && length(v.notification_metadata) > 0 }
}
output "autoscaling_lifecycle_hooks_notification_target_arn" {
  description = "Map of notification_target_arn values across all autoscaling_lifecycle_hooks, keyed the same as var.autoscaling_lifecycle_hooks"
  value       = { for k, v in aws_autoscaling_lifecycle_hook.autoscaling_lifecycle_hooks : k => v.notification_target_arn if v.notification_target_arn != null && length(v.notification_target_arn) > 0 }
}
output "autoscaling_lifecycle_hooks_region" {
  description = "Map of region values across all autoscaling_lifecycle_hooks, keyed the same as var.autoscaling_lifecycle_hooks"
  value       = { for k, v in aws_autoscaling_lifecycle_hook.autoscaling_lifecycle_hooks : k => v.region if v.region != null && length(v.region) > 0 }
}
output "autoscaling_lifecycle_hooks_role_arn" {
  description = "Map of role_arn values across all autoscaling_lifecycle_hooks, keyed the same as var.autoscaling_lifecycle_hooks"
  value       = { for k, v in aws_autoscaling_lifecycle_hook.autoscaling_lifecycle_hooks : k => v.role_arn if v.role_arn != null && length(v.role_arn) > 0 }
}

