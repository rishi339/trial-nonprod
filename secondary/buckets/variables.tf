variable "compartment_id" {
  type        = string
  description = "compartment_id"
}

variable "bucket_name" {
  type        = string
  description = "bucket_name"
}

variable "bucket_namespace" {
  type        = string
  description = "bucket_namespace"
}


variable "bucket_storage_tier" {
  type        = string
  description = "bucket_storage_tier"
}


variable "defined_tags" {
  type = map(string)
}

