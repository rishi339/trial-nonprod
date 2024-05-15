resource "oci_identity_group" "iam_group" {
  compartment_id = var.compartment_id
  description    = var.description
  name           = var.group_name
}

