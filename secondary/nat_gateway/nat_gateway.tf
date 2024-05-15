
resource "oci_core_nat_gateway" "nat_gateway" {
  #Required
  compartment_id = var.compartment_id
  vcn_id         = var.vcn_id
  display_name   = var.nat_gateway_display_name
  defined_tags   = var.defined_tags
}
