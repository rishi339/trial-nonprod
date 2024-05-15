
output "security_list_id" {
  description = "The OCID of the security list"
  value       = oci_core_security_list.security_list.id
}

