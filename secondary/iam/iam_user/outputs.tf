output "iam_user_id" {
  description = "The OCID of the User"
  value       = oci_identity_user.iam_user.id
}
