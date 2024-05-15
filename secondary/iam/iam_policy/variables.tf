
variable "compartment_id" {
  type        = string
  description = "The OCID of the compartment for which the scan recipe will be applicable."
}

variable "description" {
  type        = string
  description = "The Description of the IAM group."
}

variable "policy_name" {
  type        = string
  description = "The policy name."
}

variable "policy_statements" {
  type        = list(string)
  description = "The Policy statements."
}
