variable "compartment_id" {
  type        = string
  description = "The OCID of the compartment for which the scan recipe will be applicable."
}

variable "agent_scan_level" {
  type        = string
  description = "Vulnerability scanning service agent scan level"
}

variable "host_scan_recipe_agent_settings_agent_configuration_vendor" {
  type        = string
  description = "Vulnerability scanning service agent configuration vendor"
}

variable "cis_scan_level" {
  type        = string
  description = "Vulnerability scanning service CIS benchmark scan level"
}

variable "port_scan_level" {
  type        = string
  description = "Vulnerability scanning service Port scan level"
}

variable "host_scan_recipe_schedule_type" {
  type        = string
  description = "Vulnerability scanning service Schedule type for host scanning"
}

