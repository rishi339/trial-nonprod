output "drg_attachment_id" {
  description = "The OCID of the DRG Attachment"
  value       = oci_core_drg_attachment.drg_attachment.id
}

output "drg_attachment_display_name" {
  description = "The display name of the DRG Attachment"
  value       = oci_core_drg_attachment.drg_attachment.display_name
}

output "drg_attachment_drg_id" {
  description = "The DRG ID of the DRG Attachment"
  value       = oci_core_drg_attachment.drg_attachment.drg_id
}

