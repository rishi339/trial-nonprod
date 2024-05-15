variable "route_table_display_name" {
  type        = string
  description = "Route table name"
}


variable "compartment_id" {
  type        = string
  description = "compartment_id"
}

variable "vcn_id" {
  type        = string
  description = "vcn_id"
}


variable "defined_tags" {
  type        = map(string)
  description = "defined_tags"
}

variable "network_entity_id" {
  type        = string
  description = "network_entity_id"
}

