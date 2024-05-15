
resource "oci_identity_policy" "iam_policy" {
    #Required
  compartment_id = var.compartment_id
  description    = var.description
  name           = var.policy_name
  statements = var.policy_statements
}
