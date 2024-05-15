

resource "oci_core_service_gateway" "service_gateway" {

  compartment_id = var.compartment_id
  services {
    service_id = data.oci_core_services.services.services.0.id
  }
  vcn_id       = var.vcn_id
  display_name = var.service_gateway_display_name
  defined_tags = var.defined_tags
}
