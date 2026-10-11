resource "grafana_mute_timing" "mute_timings" {
  for_each = var.mute_timings

  name               = each.value.name
  disable_provenance = each.value.disable_provenance
  org_id             = each.value.org_id

  dynamic "intervals" {
    for_each = each.value.intervals != null ? each.value.intervals : []
    content {
      days_of_month = intervals.value.days_of_month
      location      = intervals.value.location
      months        = intervals.value.months
      dynamic "times" {
        for_each = intervals.value.times != null ? intervals.value.times : []
        content {
          end   = times.value.end
          start = times.value.start
        }
      }
      weekdays = intervals.value.weekdays
      years    = intervals.value.years
    }
  }
}

