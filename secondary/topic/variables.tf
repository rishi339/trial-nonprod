variable "compartment_id" {
  type        = string
  description = "compartment_id"
}

variable "notification_topic_name" {
  type        = string
  description = "notification_topic_name"
}

variable "notification_topic_description" {
  type        = string
  description = "notification_topic_description"
}

variable "defined_tags" {
  type = map(string)
}

