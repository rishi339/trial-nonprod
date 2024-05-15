resource "oci_core_route_table" "route_table" {
  #  Required
  compartment_id = var.compartment_id
  vcn_id         = var.vcn_id
  display_name   = var.route_table_display_name
  route_rules {
    #    Required
    network_entity_id = var.network_entity_id
    destination_type  = "CIDR_BLOCK"
    destination       = "0.0.0.0/0"
  }
  defined_tags = var.defined_tags
}
