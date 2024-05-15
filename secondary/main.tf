########################################## VCN ##########################################
module "vcn" {
  source         = "/landing_zone/secondary/vcn"
  for_each       = var.vcn_configurations
  cidr_block     = each.value.cidr_block
  display_name   = each.value.display_name
  compartment_id = local.compartment_ids[each.value.compartment_key]
  defined_tags   = each.value.defined_tags
}

########################################## BASTION ##########################################
module "bastion" {
  #  region           = each.value.region
  source                               = "/landing_zone/secondary/bastion"
  for_each                             = var.bastion_configurations
  compartment_id                       = local.compartment_ids[each.value.compartment_key]
  target_subnet_id                     = module.subnet[each.value.target_subnet_key].target_subnet_id
  bastion_client_cidr_block_allow_list = each.value.bastion_client_cidr_block_allow_list
  bastion_name                         = each.value.bastion_name
  bastion_bastion_type                 = each.value.bastion_bastion_type
  bastion_max_session_ttl_in_seconds   = each.value.bastion_max_session_ttl_in_seconds
  defined_tags                         = each.value.defined_tags
}

########################################## SUBNET ##########################################
module "subnet" {
  source            = "/landing_zone/secondary/subnet"
  for_each          = var.subnet_configurations
  compartment_id    = local.compartment_ids[each.value.compartment_key]
  vcn_id            = module.vcn[each.value.vcn_key].vcn_id
  cidr_block        = each.value.cidr_block
  route_table_id    = module.route_table[each.value.route_table_key].route_table_id
  security_list_ids = module.security_list[each.value.security_list_key].security_list_id
  display_name      = each.value.display_name
  defined_tags      = each.value.defined_tags
}

########################################## BUCKET ##########################################
module "bucket" {
  source              = "/landing_zone/secondary/buckets"
  for_each            = var.bucket_configurations
  compartment_id      = local.compartment_ids[each.value.compartment_key]
  bucket_name         = each.value.bucket_name
  bucket_namespace    = each.value.bucket_namespace
  bucket_storage_tier = each.value.bucket_storage_tier
  defined_tags        = each.value.defined_tags
}

########################################## TOPICS ##########################################
module "topic" {
  source                         = "/landing_zone/secondary/topic"
  for_each                       = var.topic_configurations
  compartment_id                 = local.compartment_ids[each.value.compartment_key]
  notification_topic_name        = each.value.notification_topic_name
  notification_topic_description = each.value.notification_topic_description
  defined_tags                   = each.value.defined_tags
}

########################################## SERVICE GATEWAY ##########################################
module "service_gateway" {
  source                       = "/landing_zone/secondary/service_gateway"
  for_each                     = var.service_gateway_configurations
  compartment_id               = local.compartment_ids[each.value.compartment_key]
  vcn_id                       = module.vcn[each.value.vcn_key].vcn_id
  service_gateway_display_name = each.value.service_gateway_display_name
  defined_tags                 = each.value.defined_tags
}

########################################## INTERNET GATEWAY ##########################################
module "internet_gateway" {
  source                        = "/landing_zone/secondary/internet_gateway"
  for_each                      = var.internet_gateway_configurations
  compartment_id                = local.compartment_ids[each.value.compartment_key]
  vcn_id                        = module.vcn[each.value.vcn_key].vcn_id
  internet_gateway_display_name = each.value.internet_gateway_display_name
  internet_gateway_enabled      = each.value.internet_gateway_enabled
  defined_tags                  = each.value.defined_tags
}

########################################## NAT GATEWAY ##########################################
module "nat_gateway" {
  source                   = "/landing_zone/secondary/nat_gateway"
  for_each                 = var.nat_gateway_configurations
  compartment_id           = local.compartment_ids[each.value.compartment_key]
  vcn_id                   = module.vcn[each.value.vcn_key].vcn_id
  nat_gateway_display_name = each.value.nat_gateway_display_name
  defined_tags             = each.value.defined_tags
}

########################################## SECURITY LISTS ##########################################
module "security_list" {
  source                     = "/landing_zone/secondary/security_list"
  for_each                   = var.security_list_configurations
  compartment_id             = local.compartment_ids[each.value.compartment_key]
  vcn_id                     = module.vcn[each.value.vcn_key].vcn_id
  security_list_display_name = each.value.security_list_display_name
  defined_tags               = each.value.defined_tags
}

########################################## ROUTE TABLE ##########################################
module "route_table" {
  source                   = "/landing_zone/secondary/route_table"
  for_each                 = var.route_table_configurations
  compartment_id           = local.compartment_ids[each.value.compartment_key]
  vcn_id                   = module.vcn[each.value.vcn_key].vcn_id
  route_table_display_name = each.value.route_table_display_name
  defined_tags             = each.value.defined_tags
  network_entity_id        = module.nat_gateway[each.value.network_entity_key].nat_gateway_id
}

########################################## DRG ##########################################
module "drg" {
  source         = "/landing_zone/secondary/drg/drg"
  for_each       = var.drg_configurations
  compartment_id = local.compartment_ids[each.value.compartment_key]
  display_name   = each.value.display_name
  defined_tags   = each.value.defined_tags
}

########################################## DRG ATTACHMENT ##########################################
module "drg_attachment" {
  source                              = "/landing_zone/secondary/drg/drg_attachment"
  for_each                            = var.drg_attachment_configurations
  display_name                        = each.value.display_name
  drg_id                              = module.drg[each.value.drg_key].drg_id
  drg_route_table_id                  = module.drg_route_table[each.value.drg_route_table_key].drg_route_table_id
  attachment_id                       = module.vcn[each.value.vcn_key].vcn_id
  drg_attachment_network_details_type = each.value.drg_attachment_network_details_type

}

########################################## DRG ROUTE DISTRIBUTION ##########################################
module "drg_route_distribution" {
  source            = "/landing_zone/secondary/drg/drg_route_distribution"
  for_each          = var.drg_route_distribution_configurations
  display_name      = each.value.display_name
  distribution_type = each.value.distribution_type
  drg_id            = module.drg[each.value.drg_key].drg_id
}

################################## DRG ROUTE DISTRIBUTION STATEMENT ####################################
module "drg_route_distribution_statement" {
  source                    = "/landing_zone/secondary/drg/drg_route_distribution_statement"
  for_each                  = var.drg_route_distribution_statement_configurations
  drg_route_distribution_id = module.drg_route_distribution[each.value.drg_route_distribution_key].drg_route_distribution_id
  action                    = each.value.action
  match_type                = each.value.match_type
  attachment_type           = each.value.attachment_type
  drg_attachment_id         = module.drg_attachment[each.value.drg_attachment_key].drg_attachment_id
  priority                  = each.value.priority
}

################################## DRG ROUTE TABLE ##################################
module "drg_route_table" {
  source                    = "/landing_zone/secondary/drg/drg_route_table"
  for_each                  = var.drg_route_table_configurations
  display_name              = each.value.display_name
  drg_id                    = module.drg[each.value.drg_key].drg_id
  drg_route_distribution_id = module.drg_route_distribution[each.value.drg_route_distribution_key].drg_route_distribution_id
}

################################## VSS_Host_Scan_Recipe ##################################

module "vss_host_scan_recipe" {
  source                                                     = "/landing_zone/secondary/vss/vss_host_scan_recipe"
  for_each                                                   = var.vss_host_scan_recipe_configurations
  agent_scan_level                                           = each.value.host_scan_recipe_agent_settings_scan_level
  host_scan_recipe_agent_settings_agent_configuration_vendor = each.value.host_scan_recipe_agent_settings_agent_configuration_vendor
  cis_scan_level                                             = each.value.host_scan_recipe_agent_settings_agent_configuration_cis_benchmark_settings_scan_level
  compartment_id                                             = local.compartment_ids[each.value.compartment_key]
  port_scan_level                                            = each.value.host_scan_recipe_port_settings_scan_level
  host_scan_recipe_schedule_type                             = each.value.host_scan_recipe_schedule_type
}

################################## VSS_Host_Scan_target ##################################
module "vss_host_scan_target" {
  source                   = "/landing_zone/secondary/vss/vss_host_scan_target"
  for_each                 = var.vss_host_scan_target_configurations
  compartment_id           = local.compartment_ids[each.value.compartment_key]
  test_host_scan_recipe_id = module.vss_host_scan_recipe[each.value.test_host_scan_recipe_key].test_host_scan_recipe_id
  target_compartment_id    = local.compartment_ids[each.value.compartment_key]
}


