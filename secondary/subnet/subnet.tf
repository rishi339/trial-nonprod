resource "oci_core_subnet" "subnet" {

  compartment_id    = var.compartment_id
  vcn_id            = var.vcn_id
  cidr_block        = var.cidr_block
  route_table_id    = var.route_table_id
  security_list_ids = [var.security_list_ids]
  display_name      = var.display_name
  defined_tags      = var.defined_tags
}
