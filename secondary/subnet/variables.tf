
variable "cidr_block" {
  type        = string
  description = "cidr_block"
}

variable "display_name" {
  type        = string
  description = "display_name"
}

variable "defined_tags" {
  type        = map(string)
  description = "defined_tags"
}

variable "compartment_id" {
  type        = string
  description = "compartment_id"
}

variable "vcn_id" {
  type        = string
  description = "vcn_id"
}

variable "route_table_id" {
  type        = string
  description = "OCID of Route table"
}

variable "security_list_ids" {
  type        = string
  description = "OCID of Security Lists"
}

