# -----------------------------------------------------------------------------
# 				DRG Variables
# -----------------------------------------------------------------------------

variable "drg_id" {
  type        = string
  description = "The OCID of your DRG"
}

variable "drg_route_distribution_id" {
  type        = string
  description = "The OCID of DRG Route Distribution"
}

variable "display_name" {
  type        = string
  description = "The name of DRG Route Table"
}
