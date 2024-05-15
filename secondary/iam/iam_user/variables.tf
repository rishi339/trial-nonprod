variable "user_name" {
  type    = string
  description = "Username"
}

variable "user_email" {
  type    = string
  description = "user_email"
}

variable "description" {
  type    = string
  description = "user description"
}

variable "compartment_id" {
  type        = string
  description = "The OCID of the compartment for which the scan recipe will be applicable."
}
