# -----------------------------------------------------------------------------
# 				DRG Variables
# -----------------------------------------------------------------------------

variable "drg_route_distribution_id" {
  type        = string
  description = "OCID of DRG Route Distribution"
}

variable "action" {
  type        = string
  description = "Action to be performed by the DRG route distribution statement"
  #Possible values: ACCEPT, REJECT, ALLOW, DENY
}

variable "match_type" {
  type        = string
  description = "Match type for the DRG route distribution statement's match criteria"
  #Possible values: DRG_ATTACHMENT_ID, DRG_ATTACHMENT_TYPE, MATCH_ALL
}

variable "attachment_type" {
  type        = string
  description = "Attachment type for the DRG route distribution statement's match criteria."
  #Possible values: VCN, DRG, DRG_ATTACHMENT, CPE
}

variable "priority" {
  type        = number
  description = "Priority for the DRG route distribution statement."
}

variable "drg_attachment_id" {
  type        = string
  description = "OCID of DRG Attachment"
}
