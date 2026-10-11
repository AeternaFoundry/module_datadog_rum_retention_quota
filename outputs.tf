output "rum_retention_quota_id" {
  description = "Map of id values across all rum_retention_quota, keyed the same as var.rum_retention_quota except keys with no id are omitted"
  value       = { for k, v in datadog_rum_retention_quota.rum_retention_quota : k => v.id if v.id != null && length(v.id) > 0 }
}
output "rum_retention_quota_application_id" {
  description = "Map of application_id values across all rum_retention_quota, keyed the same as var.rum_retention_quota except keys with no application_id are omitted"
  value       = { for k, v in datadog_rum_retention_quota.rum_retention_quota : k => v.application_id if v.application_id != null && length(v.application_id) > 0 }
}
output "rum_retention_quota_custom" {
  description = "Map of custom values across all rum_retention_quota, keyed the same as var.rum_retention_quota except keys with no custom are omitted"
  value       = { for k, v in datadog_rum_retention_quota.rum_retention_quota : k => v.custom if v.custom != null && length(v.custom) > 0 }
}
output "rum_retention_quota_mode" {
  description = "Map of mode values across all rum_retention_quota, keyed the same as var.rum_retention_quota except keys with no mode are omitted"
  value       = { for k, v in datadog_rum_retention_quota.rum_retention_quota : k => v.mode if v.mode != null && length(v.mode) > 0 }
}

