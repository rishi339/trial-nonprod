resource "oci_identity_tag_namespace" "tag" {
  compartment_id = var.tenancy_ocid
  description    = "Taggig Namespace"
  name           = var.namespace_name
  is_retired     = false
  lifecycle {
    ignore_changes = all
  }

}
