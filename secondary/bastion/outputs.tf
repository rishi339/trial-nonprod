output "bastion_id" {
  description = "The OCID of the Bastion."
  value       = oci_bastion_bastion.bastion.id
}

output "bastion_name" {
  description = "The name of the Bastion."
  value       = oci_bastion_bastion.bastion.name
}

output "bastion_type" {
  description = "The type of the Bastion."
  value       = oci_bastion_bastion.bastion.bastion_type
}

output "bastion_compartment_id" {
  description = "The OCID of the compartment containing the Bastion."
  value       = oci_bastion_bastion.bastion.compartment_id
}

output "bastion_target_subnet_id" {
  description = "The OCID of the subnet to which the Bastion is attached."
  value       = oci_bastion_bastion.bastion.target_subnet_id
}

output "bastion_max_session_ttl_in_seconds" {
  description = "The maximum time-to-live (TTL) for sessions."
  value       = oci_bastion_bastion.bastion.max_session_ttl_in_seconds
}

output "bastion_defined_tags" {
  description = "Defined tags for the Bastion."
  value       = oci_bastion_bastion.bastion.defined_tags
}

