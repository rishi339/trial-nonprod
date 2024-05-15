# -----------------------------------------------------------------------------
# 				DRG Variables
# -----------------------------------------------------------------------------
variable "distribution_type" {
  type        = string
  description = "Distribution type for the DRG route distribution."
  #Possible values: IMPORT, EXPORT
}

variable "display_name" {
  type        = string
  description = "Display name for the DRG route distribution."
}

variable "drg_id" {
  type        = string
  description = "OCID of DRG for DRG attachment"
}

