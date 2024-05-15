output "drg_route_distribution_id" {
  description = "The OCID of the DRG Route Distribution"
  value       = oci_core_drg_route_distribution.drg_route_distribution.id
}

output "drg_route_distribution_display_name" {
  description = "The display name of the DRG Route Distribution"
  value       = oci_core_drg_route_distribution.drg_route_distribution.display_name
}

output "drg_route_distribution_distribution_type" {
  description = "The distribution type of the DRG Route Distribution"
  value       = oci_core_drg_route_distribution.drg_route_distribution.distribution_type
}
