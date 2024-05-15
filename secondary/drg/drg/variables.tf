# -----------------------------------------------------------------------------
# 				DRG Variables
# -----------------------------------------------------------------------------

variable "display_name" {
  type        = string
  description = "The Name of your DRG"
}

variable "compartment_id" {
  type        = string
  description = "Compartment ID of DRG"
}

variable "defined_tags" {
  type = map(string)
}
