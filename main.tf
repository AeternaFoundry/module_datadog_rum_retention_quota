resource "datadog_rum_retention_quota" "rum_retention_quota" {
  for_each = var.rum_retention_quota

  application_id = each.value.application_id
  mode           = each.value.mode

  dynamic "custom" {
    for_each = each.value.custom != null ? each.value.custom : []
    content {
      daily_reset_time     = custom.value.daily_reset_time
      daily_reset_timezone = custom.value.daily_reset_timezone
      quota_reached_action = custom.value.quota_reached_action
      session_limit        = custom.value.session_limit
      window_type          = custom.value.window_type
    }
  }
}

