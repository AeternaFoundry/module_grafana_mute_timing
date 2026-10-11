variable "mute_timings" {
  description = <<EOT
Map of mute_timings, attributes below
Required:
    - name
Optional:
    - disable_provenance
    - org_id
    - intervals (block):
        - days_of_month (optional)
        - location (optional)
        - months (optional)
        - times (optional, block):
            - end (required)
            - start (required)
        - weekdays (optional)
        - years (optional)
EOT

  type = map(object({
    name               = string
    disable_provenance = optional(bool)
    org_id             = optional(string)
    intervals = optional(list(object({
      days_of_month = optional(list(string))
      location      = optional(string)
      months        = optional(list(string))
      times = optional(list(object({
        end   = string
        start = string
      })))
      weekdays = optional(list(string))
      years    = optional(list(string))
    })))
  }))
}

