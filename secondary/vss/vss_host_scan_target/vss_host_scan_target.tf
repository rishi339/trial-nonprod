resource "oci_vulnerability_scanning_host_scan_target" "test_host_scan_target" {
  #Required
  compartment_id        = var.compartment_id
  host_scan_recipe_id   = var.test_host_scan_recipe_id
  target_compartment_id = var.compartment_id
}
