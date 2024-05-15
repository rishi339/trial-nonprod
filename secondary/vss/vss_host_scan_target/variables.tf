variable "target_compartment_id" {
  type        = string
  description = "The OCID of the compartment for which the scan recipe will be applicable."
}


variable "compartment_id" {
  type        = string
  description = "The OCID of the compartment for which the scan recipe will be applicable."
}

variable "test_host_scan_recipe_id" {
  type        = string
  description = "The OCID of the host_scan_recipe."
}
