resource "oci_identity_tag" "tag" {
  description      = "Tagging of resources using Tag Namespace"
  name             = var.name
  tag_namespace_id = var.tag_namespace_id

  is_cost_tracking = true
  validator {
    validator_type = "ENUM"
    values         = var.values
  }
  is_retired = false
  lifecycle {
    ignore_changes = all
  }

}
