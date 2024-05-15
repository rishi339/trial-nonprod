# -----------------------------------------------------------------------------
#                          DRG ATTACHMENT                                     #
# -----------------------------------------------------------------------------

resource "oci_core_drg_attachment" "drg_attachment" {

  drg_id       = var.drg_id
  display_name = var.display_name
  drg_route_table_id = var.drg_route_table_id
  network_details {
    #The type can be one of these values: IPSEC_TUNNEL, REMOTE_PEERING_CONNECTION, VCN, VIRTUAL_CIRCUIT
    id   = var.attachment_id
    type = var.drg_attachment_network_details_type
  }
}

