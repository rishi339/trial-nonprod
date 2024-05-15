
variable "compartment_id" {
  type        = string
  description = "compartment id"
}

variable "vcn_id" {
  type        = string
  description = "vcn id"
}

variable "security_list_display_name" {
  type        = string
  description = "display name"
}

variable "defined_tags" {
  type        = map(string)
  description = "defined tags"
}
