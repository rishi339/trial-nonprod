
output "iam_group_id" {
  description = "The OCID of the IAM Group"
  value       = oci_identity_group.iam_group.id
}

