output "mute_timings_id" {
  description = "Map of id values across all mute_timings, keyed the same as var.mute_timings except keys with no id are omitted"
  value       = { for k, v in grafana_mute_timing.mute_timings : k => v.id if v.id != null && length(v.id) > 0 }
}
output "mute_timings_disable_provenance" {
  description = "Map of disable_provenance values across all mute_timings, keyed the same as var.mute_timings except keys with no disable_provenance are omitted"
  value       = { for k, v in grafana_mute_timing.mute_timings : k => v.disable_provenance if v.disable_provenance != null }
}
output "mute_timings_intervals" {
  description = "Map of intervals values across all mute_timings, keyed the same as var.mute_timings except keys with no intervals are omitted"
  value       = { for k, v in grafana_mute_timing.mute_timings : k => v.intervals if v.intervals != null && length(v.intervals) > 0 }
}
output "mute_timings_name" {
  description = "Map of name values across all mute_timings, keyed the same as var.mute_timings except keys with no name are omitted"
  value       = { for k, v in grafana_mute_timing.mute_timings : k => v.name if v.name != null && length(v.name) > 0 }
}
output "mute_timings_org_id" {
  description = "Map of org_id values across all mute_timings, keyed the same as var.mute_timings except keys with no org_id are omitted"
  value       = { for k, v in grafana_mute_timing.mute_timings : k => v.org_id if v.org_id != null && length(v.org_id) > 0 }
}

