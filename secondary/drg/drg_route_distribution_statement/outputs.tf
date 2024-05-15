output "drg_route_distribution_statement_id" {
  description = "The OCID of the DRG Route Distribution Statement"
  value       = oci_core_drg_route_distribution_statement.drg_route_distribution_statement.id
}

output "drg_route_distribution_statement_action" {
  description = "The action of the DRG Route Distribution Statement"
  value       = oci_core_drg_route_distribution_statement.drg_route_distribution_statement.action
}

output "drg_route_distribution_statement_priority" {
  description = "The priority of the DRG Route Distribution Statement"
  value       = oci_core_drg_route_distribution_statement.drg_route_distribution_statement.priority
}

output "drg_route_distribution_statement_match_criteria" {
  description = "The match criteria of the DRG Route Distribution Statement"
  value       = oci_core_drg_route_distribution_statement.drg_route_distribution_statement.match_criteria
}

