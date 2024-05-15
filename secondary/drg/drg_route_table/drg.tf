# -----------------------------------------------------------------------------
#                             DRG ROUTE TABLE                                 #
# -----------------------------------------------------------------------------

resource "oci_core_drg_route_table" "drg_route_table" {
  drg_id                           = var.drg_id
  import_drg_route_distribution_id = var.drg_route_distribution_id
  display_name                     = var.display_name
}

