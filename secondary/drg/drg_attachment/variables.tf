# -----------------------------------------------------------------------------
# 				DRG Variables
# -----------------------------------------------------------------------------
variable "display_name" {
  type        = string
  description = "The name of DRG Attachment"
}

variable "drg_attachment_network_details_type" {
  type        = string
  description = "The type can be one of these values: IPSEC_TUNNEL, REMOTE_PEERING_CONNECTION, VCN, VIRTUAL_CIRCUIT"
}

variable "drg_id" {
  type        = string
  description = "OCID of DRG for DRG attachment"
}

variable "drg_route_table_id" {
  type        = string
  description = "OCID of DRG Route Table"
}

variable "attachment_id" {
  type        = string
  description = "OCID of Attachment"
}
