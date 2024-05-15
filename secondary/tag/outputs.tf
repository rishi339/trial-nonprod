output "tag_id" {
  description = "The OCID of the tag"
  value       = oci_identity_tag.tag.id
}

output "tag_name" {
  description = "The name of the tag"
  value       = oci_identity_tag.tag.name
}

output "tag_description" {
  description = "The description of the tag"
  value       = oci_identity_tag.tag.description
}

output "tag_is_cost_tracking" {
  description = "The cost tracking status of the tag"
  value       = oci_identity_tag.tag.is_cost_tracking
}

#output "tag_validator_type" {
#  description = "The validator type of the tag"
#  value       = oci_identity_tag.tag.validator.validator_type
#}

#output "tag_validator_values" {
#  description = "The validator values of the tag"
#  value       = oci_identity_tag.tag.validator.values
#}

output "tag_is_retired" {
  description = "The retirement status of the tag"
  value       = oci_identity_tag.tag.is_retired
}

