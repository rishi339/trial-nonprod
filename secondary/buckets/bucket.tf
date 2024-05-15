resource "oci_objectstorage_bucket" "bucket" {
  #Required
  compartment_id = var.compartment_id
  name           = var.bucket_name
  namespace      = var.bucket_namespace
  storage_tier   = var.bucket_storage_tier
  defined_tags   = var.defined_tags
  lifecycle {
    ignore_changes = all
  }
}
