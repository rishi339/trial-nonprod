
# -----------------------------------------------------------------------------
#                               PROD VCN Variables
# -----------------------------------------------------------------------------

variable "cidr_block" {
  type        = string
  description = "The CIDR value of your Prod VCN"

}

variable "display_name" {
  type        = string
  description = "The Name of your Prod VCN"

}

variable "compartment_id" {
  type        = string
  description = "Compartment Name"
}

variable "defined_tags" {
  type = map(string)
}

