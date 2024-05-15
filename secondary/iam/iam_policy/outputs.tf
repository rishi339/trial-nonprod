
output "policy_id" {
  description = "The OCID of the Policy"
  value       = oci_identity_policy.iam_policy.id
}
