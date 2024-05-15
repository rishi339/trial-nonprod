resource "oci_core_internet_gateway" "internet_gateway" {

  compartment_id = var.compartment_id
  vcn_id         = var.vcn_id
  enabled        = var.internet_gateway_enabled
  display_name   = var.internet_gateway_display_name
  defined_tags   = var.defined_tags
}
