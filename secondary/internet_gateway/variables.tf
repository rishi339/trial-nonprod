
variable "internet_gateway_enabled" {
  type        = bool
  description = "Should IG be enabled VCN? True/False"
}

variable "internet_gateway_display_name" {
  type        = string
  description = "Name of Internet Gateway VCN"
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
  type = map(string)
}

