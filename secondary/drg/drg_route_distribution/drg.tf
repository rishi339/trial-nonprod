# -----------------------------------------------------------------------------
#                          DRG ROUTE DISTRIBUTION                             #
# -----------------------------------------------------------------------------

resource "oci_core_drg_route_distribution" "drg_route_distribution" {
  #Required
  distribution_type = var.distribution_type
  drg_id            = var.drg_id
  display_name      = var.display_name
}
