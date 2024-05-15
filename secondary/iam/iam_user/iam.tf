resource "oci_identity_user" "iam_user" {
  compartment_id = var.compartment_id
  description    = var.description
  name           = var.user_name
  email          = var.user_email
}
