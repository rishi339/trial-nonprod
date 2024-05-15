output "drg_route_table_id" {
  description = "The OCID of the DRG Route Table"
  value       = oci_core_drg_route_table.drg_route_table.id
}

output "drg_route_table_display_name" {
  description = "The display name of the DRG Route Table"
  value       = oci_core_drg_route_table.drg_route_table.display_name
}

output "drg_route_table_drg_id" {
  description = "The DRG ID of the DRG Route Table"
  value       = oci_core_drg_route_table.drg_route_table.drg_id
}

output "drg_route_table_import_drg_route_distribution_id" {
  description = "The import DRG Route Distribution ID of the DRG Route Table"
  value       = oci_core_drg_route_table.drg_route_table.import_drg_route_distribution_id
}

