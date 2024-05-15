########################################## VCN ##########################################

variable "vcn_configurations" {
  description = "A list of VCN configurations"
  type = map(object({
    compartment_key = string
    cidr_block      = string
    display_name    = string
    defined_tags    = map(string)
  }))
}

########################################## SUBNET ##########################################

variable "subnet_configurations" {
  description = "A list of subnet configurations"
  type = map(object({
    compartment_key   = string
    defined_tags      = map(string)
    route_table_key   = string
    security_list_key = string
    cidr_block        = string
    display_name      = string
    vcn_key           = string
  }))
}

########################################## BASTION ##########################################

variable "bastion_configurations" {
  description = "A list of bastion configurations"
  type = map(object({
    compartment_key                      = string
    target_subnet_key                    = string
    bastion_client_cidr_block_allow_list = list(string)
    bastion_name                         = string
    defined_tags                         = map(string)
    bastion_bastion_type                 = string
    bastion_max_session_ttl_in_seconds   = number
  }))
}

########################################## BUCKET ##########################################

variable "bucket_configurations" {
  description = "A list of bucket Configurations"
  type = map(object({
    compartment_key     = string
    bucket_name         = string
    bucket_namespace    = string
    bucket_storage_tier = string
    defined_tags        = map(string)
  }))
}

########################################## TOPICS ##########################################

variable "topic_configurations" {
  description = "A list of topic configurations"
  type = map(object({
    compartment_key                = string
    notification_topic_name        = string
    notification_topic_description = string
    defined_tags                   = map(string)
  }))
}

########################################## INTERNET GATEWAY ##########################################

variable "internet_gateway_configurations" {
  description = "A list of internet gateway configurations"
  type = map(object({
    compartment_key               = string
    internet_gateway_display_name = string
    vcn_key                       = string
    internet_gateway_enabled      = bool
    defined_tags                  = map(string)
  }))
}

########################################## SERVICE GATEWAY ##########################################

variable "service_gateway_configurations" {
  description = "A list of service gateway configurations"
  type = map(object({
    compartment_key              = string
    defined_tags                 = map(string)
    service_gateway_display_name = string
    vcn_key                      = string
  }))
}

########################################## NAT GATEWAY ##########################################

variable "nat_gateway_configurations" {
  description = "A list of nat gateway configurations"
  type = map(object({
    compartment_key          = string
    defined_tags             = map(string)
    nat_gateway_display_name = string
    vcn_key                  = string
  }))
}

########################################## SECURITY LISTS ##########################################

variable "security_list_configurations" {
  description = "A list of security list configurations"
  type = map(object({
    compartment_key            = string
    defined_tags               = map(string)
    security_list_display_name = string
    vcn_key                    = string
  }))
}

########################################## ROUTE TABLE ##########################################

variable "route_table_configurations" {
  description = "A list of route table and route rules configurations"
  type = map(object({
    compartment_key          = string
    defined_tags             = map(string)
    route_table_display_name = string
    vcn_key                  = string
    network_entity_key       = string
  }))
}

########################################## DRG ##########################################

variable "drg_configurations" {
  description = "A list of DRG  configurations"
  type = map(object({
    compartment_key = string
    display_name    = string
    defined_tags    = map(string)
  }))
}

########################################## DRG ATTACHMENT ##########################################

variable "drg_attachment_configurations" {
  description = "A list of DRG Attachment configurations"
  type = map(object({
    drg_key             = string
    display_name        = string
    drg_route_table_key = string
    #    attachment_id                       = string
    drg_attachment_network_details_type = string
    vcn_key                             = string
  }))
}

########################################## DRG ROUTE DISTRIBUTION ##########################################

variable "drg_route_distribution_configurations" {
  description = "A list of DRG Route Distribution  configurations"
  type = map(object({
    distribution_type = string
    drg_key           = string
    display_name      = string
  }))
}

################################## DRG ROUTE DISTRIBUTION STATEMENT ####################################

variable "drg_route_distribution_statement_configurations" {
  description = "A list of DRG Route Distribution configurations Statements"
  type = map(object({
    drg_route_distribution_key = string
    action                     = string
    match_type                 = string
    attachment_type            = optional(string)
    drg_attachment_key         = optional(string)
  priority = string }))
}

################################## DRG ROUTE TABLE ##################################

variable "drg_route_table_configurations" {
  description = "A list of DRG Route Table configurations"
  type = map(object({
    drg_key                    = string
    display_name               = string
    drg_route_distribution_key = string
  }))
}

##################################### TAG NAMESPACE #####################################

variable "tag_namespace_configurations" {
  description = "A List of Namespace configurations"
  type = map(object({
    namespace_name = string
  }))
}

####################################### TAG #############################################

variable "tag_configurations" {
  description = "A List of Tag Configurations"
  type = map(object({
    name              = string
    tag_namespace_key = string
    values            = list(string)
  }))
}

####################################### VSS_Host_Scan_Recipe #############################################

variable "vss_host_scan_recipe_configurations" {
  description = "A List of vss_host_scan_recipe_Configurations"
  type = map(object({
    compartment_key                                                                       = string
    host_scan_recipe_agent_settings_scan_level                                            = string
    host_scan_recipe_agent_settings_agent_configuration_vendor                            = string
    host_scan_recipe_agent_settings_agent_configuration_cis_benchmark_settings_scan_level = string
    host_scan_recipe_port_settings_scan_level                                             = string
    host_scan_recipe_schedule_type                                                        = string
  }))
}

####################################### VSS_Host_Scan_Target #############################################

variable "vss_host_scan_target_configurations" {
  description = "A List of vss_host_scan_recipe_Configurations"
  type = map(object({
    compartment_key           = string
    target_compartment_key    = string
    test_host_scan_recipe_key = string
  }))
}


####################################### IAM_User #############################################

variable "iam_user_configurations" {
  description = "A List of IAM user_Configurations"
  type = map(object({
    description = string
    user_name   = string
    user_email  = string
  }))
}

####################################### IAM_Group #############################################

variable "iam_group_configurations" {
  description = "A List of IAM group_Configurations"
  type = map(object({
    description = string
    group_name  = string
  }))
}


####################################### IAM_Policy #############################################

variable "iam_policy_configurations" {
  description = "A List of IAM policy_Configurations"
  type = map(object({
    description       = string
    policy_name       = string
    policy_statements = list(string)
  }))
}


####################################### user_group_membership #############################################

variable "user_group_membership_configurations" {
  description = "A List of IAM policy_Configurations"
  type = map(object({
    iam_group_key = string
    iam_user_key  = string
  }))
}
