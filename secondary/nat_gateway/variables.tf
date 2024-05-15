
variable "nat_gateway_display_name" {
  type        = string
  description = "nat_gateway_display_name"
}

variable "compartment_id" {
  type        = string
  description = "compartment id"
}

variable "vcn_id" {
  type        = string
  description = "vcn id"
}

variable "defined_tags" {
  type        = map(string)
  description = "defined tags"
}
