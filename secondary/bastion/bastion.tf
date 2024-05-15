resource "oci_bastion_bastion" "bastion" {
  #  provider         = var.region
  bastion_type     = var.bastion_bastion_type
  compartment_id   = var.compartment_id
  target_subnet_id = var.target_subnet_id

  client_cidr_block_allow_list = var.bastion_client_cidr_block_allow_list
  max_session_ttl_in_seconds   = var.bastion_max_session_ttl_in_seconds
  name                         = var.bastion_name
  defined_tags                 = var.defined_tags
}
