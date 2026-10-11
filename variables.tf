variable "rum_retention_quota" {
  description = <<EOT
Map of rum_retention_quota, attributes below
Required:
    - application_id
    - mode
Optional:
    - custom (block):
        - daily_reset_time (required)
        - daily_reset_timezone (required)
        - quota_reached_action (required)
        - session_limit (required)
        - window_type (required)
EOT

  type = map(object({
    application_id = string
    mode           = string
    custom = optional(list(object({
      daily_reset_time     = string
      daily_reset_timezone = string
      quota_reached_action = string
      session_limit        = number
      window_type          = string
    })))
  }))
}

