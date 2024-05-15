variable "name" {
  description = "Key Name of Tag"
  type        = string
}

variable "tag_namespace_id" {
  description = "OCID of Tag Namespace to be used"
  type        = string
}

variable "values" {
  description = "Values for respective tag"
  type        = list(string)
}

