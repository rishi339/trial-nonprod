output "tag_namespace_id" {
  description = "The OCID of the tag namespace"
  value       = oci_identity_tag_namespace.tag.id
}

output "tag_namespace_name" {
  description = "The name of the tag namespace"
  value       = oci_identity_tag_namespace.tag.name
}

output "tag_namespace_description" {
  description = "The description of the tag namespace"
  value       = oci_identity_tag_namespace.tag.description
}

output "tag_namespace_is_retired" {
  description = "The retirement status of the tag namespace"
  value       = oci_identity_tag_namespace.tag.is_retired
}

