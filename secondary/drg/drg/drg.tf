# -----------------------------------------------------------------------------
#                                   DRG                                       #
# -----------------------------------------------------------------------------

resource "oci_core_drg" "drg" {

  compartment_id = var.compartment_id
  display_name   = var.display_name
  defined_tags   = var.defined_tags
}
