output "drg_id" {
  description = "The OCID of the DRG"
  value       = oci_core_drg.drg.id
}

output "drg_display_name" {
  description = "The display name of the DRG"
  value       = oci_core_drg.drg.display_name
}

