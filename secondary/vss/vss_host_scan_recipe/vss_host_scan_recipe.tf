resource "oci_vulnerability_scanning_host_scan_recipe" "test_host_scan_recipe" {
  #Required
  agent_settings {
    #Required
    scan_level = var.agent_scan_level

    #Optional
    agent_configuration {
      #Required
      vendor = var.host_scan_recipe_agent_settings_agent_configuration_vendor

      #Optional
      cis_benchmark_settings {

        #Optional
        scan_level = var.cis_scan_level
      }
    }
  }
  compartment_id = var.compartment_id
  port_settings {
    #Required
    scan_level = var.port_scan_level
  }
  schedule {
    #Required
    type = var.host_scan_recipe_schedule_type
  }
}
