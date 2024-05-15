# -----------------------------------------------------------------------------
#                                   DRG                                       #
# -----------------------------------------------------------------------------

resource "oci_core_drg_route_distribution_statement" "drg_route_distribution_statement" {
  drg_route_distribution_id = var.drg_route_distribution_id
  action                    = var.action

  match_criteria {
    match_type        = var.match_type
    attachment_type   = var.attachment_type
    drg_attachment_id = var.drg_attachment_id

  }
  priority = var.priority

}

