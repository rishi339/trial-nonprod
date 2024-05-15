variable "compartment_id" {
  type        = string
  description = "compartment_id"
}

variable "target_subnet_id" {
  type        = string
  description = "target_subnet_id"
}

variable "bastion_client_cidr_block_allow_list" {
  type        = list(string)
  description = "bastion_client_cidr_block_allow_list"
}

variable "bastion_name" {
  type        = string
  description = "bastion_name"
}

variable "bastion_bastion_type" {
  type        = string
  description = "bastion_bastion_type"
}

variable "bastion_max_session_ttl_in_seconds" {
  type        = number
  description = "bastion_max_session_ttl_in_seconds"
}

variable "defined_tags" {
  type = map(string)
}

#variable "region" {
#  type = string
#}
